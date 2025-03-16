{
  beamPackages,
  lib,
  mkYarnModules,
  postgresql_17,
  rdfind,
  removeReferencesTo,
  stdenv,
  writeShellScript,
  yarn,
}: let
  name = "foo";
  version = "master";

  fs = lib.fileset;

  assetsSrc = fs.toSource {
    root = ../.;
    fileset = fs.unions [
      ../assets
      (fs.fileFilter (file: file.hasExt "ex" || file.hasExt "heex" || file.hasExt ".eex") ../lib)
    ];
  };

  elixirSrcFileset = fs.unions [
    ../config/.
    ../lib/.
    ../mix.exs
    ../mix.lock
    ../priv/.
  ];

  relSrc = fs.toSource {
    root = ../.;
    fileset = fs.unions [
      elixirSrcFileset
      ../rel/.
    ];
  };

  devSrc = fs.toSource {
    root = ../.;
    fileset = fs.unions [
      elixirSrcFileset
      ../test/.
    ];
  };

  mixNixDeps = import ./mix_deps.nix {
    inherit lib beamPackages;
  };

  yarnDeps = mkYarnModules {
    pname = "${name}-yarn-deps";

    inherit version;

    packageJSON = ../assets/package.json;
    yarnLock = ../assets/yarn.lock;
    yarnNix = ./yarn_deps.nix;

    yarnFlags = ["--production"];

    preBuild = ''
      mkdir -p deps/deps

      cp --no-preserve=mode -r ${mixNixDeps.phoenix.src} deps/deps/phoenix
      cp --no-preserve=mode -r ${mixNixDeps.phoenix_html.src} deps/deps/phoenix_html
      cp --no-preserve=mode -r ${mixNixDeps.phoenix_live_view.src} deps/deps/phoenix_live_view
    '';
  };

  assetsDrv = stdenv.mkDerivation {
    name = "${name}-assets";
    version = "master";

    src = assetsSrc;

    nativeBuildInputs = [
      yarn
      removeReferencesTo
    ];

    buildPhase = ''
      export HOME=$TMPDIR

      pushd assets

      ln -sf ${yarnDeps}/node_modules node_modules
      ln -sf ${yarnDeps}/lib lib

      yarn --offline deploy

      popd
    '';

    installPhase = ''
      mkdir -p $out/manifests

      cp --no-preserve=mode assets/*.json $out/manifests
      cp --no-preserve=mode -r priv/static/assets $out/assets

      find "$out" \
        -type f \
        -exec remove-references-to -t ${yarnDeps} '{}' +
    '';

    disallowedReferences = [yarnDeps];
  };

  commonArgs = {
    inherit version mixNixDeps;

    ELIXIR_ERL_OPTIONS = "+fnu";
    LC_ALL = "C.UTF-8";
  };
in rec {
  rel = beamPackages.mixRelease (commonArgs
    // {
      pname = name;
      src = relSrc;

      nativeBuildInputs = [
        rdfind
        removeReferencesTo
      ];

      postBuild = ''
        mkdir -p priv/static/assets
        cp --no-preserve=mode ${assetsDrv}/assets/* priv/static/assets

        mix phx.digest --no-deps-check --no-compile
      '';

      postInstall = ''
        find "$out" \
          -name "*.beam" \
          -type f \
          -exec remove-references-to -t ${beamPackages.erlang} '{}' +

        find "$out" \
          -name "*.beam" \
          -type f \
          -exec remove-references-to -t ${mixNixDeps.phoenix} '{}' +

        find "$out" \
          -name "*.beam" \
          -type f \
          -exec remove-references-to -t ${mixNixDeps.phoenix_html} '{}' +

        privDir="$(find $out/lib -maxdepth 1 -name "foo*")/priv"

        rdfind \
          -makesymlinks true \
          -checksum sha256 \
          -makeresultsfile false \
          "$privDir/static"

        for file in $(find $out -name "*.map"); do
          echo "removing reference to yarn deps in $file"
          sed -i "s|${yarnDeps}||g" "$file"
        done
      '';

      disallowedReferences = [beamPackages.erlang yarnDeps];
    });

  entrypoint = writeShellScript "entrypoint" ''
    set -eEou pipefail

    ${rel}/bin/foo eval Foo.Release.migrate
    exec ${rel}/bin/foo start
  '';

  checks = {
    "${name}-test" = beamPackages.mixRunTask (commonArgs
      // {
        pname = "${name}-test";
        src = devSrc;

        nativeBuildInputs = [
          postgresql_17
        ];

        mixEnv = "test";
        mixCommand = "test --preload-modules --no-deps-check --no-compile";

        TEST_DATABASE_URL = "postgres://postgres:postgres@localhost/postgres";

        preBuild = ''
          export PGDATA="$PWD/postgres"

          initdb
          pg_ctl -l "$PGDATA/server.log" -o "-c unix_socket_directories=$PGDATA" start
          createuser -h localhost postgres -ds

          mix ecto.load --no-deps-check --no-compile
        '';

        postBuild = ''
          pg_ctl -l "$PGDATA/server.log" stop
        '';
      });

    "${name}-js-format" = stdenv.mkDerivation {
      name = "${name}-js-format";
      src = assetsSrc;

      nativeBuildInputs = [yarn];

      buildPhase = ''
        export HOME=$TMPDIR

        cd assets
        ln -sf ${yarnDeps}/node_modules node_modules

        yarn --offline run lint
      '';

      dontFixup = true;

      installPhase = ''
        touch $out
      '';
    };

    # NOTE: because of `import_deps` and `plugins` in `.formatter.exs`, this cannot run under nix. :(
    #
    # "${name}-format" = beamPackages.mixRunTask (commonArgs
    #   // {
    #     pname = "${name}-format";
    #     src = devSrc;

    #     skipCompile = true;

    #     mixEnv = "test";
    #     mixCommand = let
    #       config = builtins.path {
    #         path = ../.formatter.exs;
    #         name = "formatter.exs";
    #       };
    #     in "format --check-formatted --dot-formatter ${config}";
    #   });

    "${name}-credo" = beamPackages.mixRunTask (commonArgs
      // {
        pname = "${name}-credo";
        src = devSrc;

        skipCompile = true;

        mixEnv = "test";
        mixCommand = let
          config = builtins.path {
            path = ../.credo.exs;
            name = "credo.exs";
          };
        in "credo --all --config-file ${config}";
      });
  };
}

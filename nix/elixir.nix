{
  beamPackages,
  fetchFromGitHub,
  lib,
  mkYarnModules,
  postgresql_16,
  rdfind,
  removeReferencesTo,
  stdenv,
  yarn,
}: let
  name = "foo";
  version = "master";

  assetsSrc = [../assets/.];

  elixirSrc = [
    ../config/.
    ../lib/.
    ../mix.exs
    ../mix.lock
    ../priv/.
  ];

  relSrc = elixirSrc ++ assetsSrc;

  devSrc = elixirSrc ++ [../test/.];

  mixNixDeps = import ./mix_deps.nix {
    inherit lib beamPackages;

    overrides = final: prev: {
      heroicons = fetchFromGitHub {
        owner = "tailwindlabs";
        repo = "heroicons";
        rev = "v2.1.1";
        hash = "sha256-4yRqfY8r2Ar9Fr45ikD/8jK+H3g4veEHfXa9BorLxXg=";
      };
    };
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

  commonArgs = {
    inherit version mixNixDeps;

    # TODO: why?
    unpackPhase = ''
      for srcFile in $src; do
        if [[ -d "$srcFile" ]]; then
          cp --no-preserve=mode -r $srcFile $(stripHash $srcFile)
        else
          cp --no-preserve=mode $srcFile $(stripHash $srcFile)
        fi
      done
    '';

    ELIXIR_ERL_OPTIONS = "+fnu";
    LC_ALL = "C.UTF-8";
  };
in {
  rel = beamPackages.mixRelease (commonArgs
    // {
      pname = name;
      src = relSrc;

      nativeBuildInputs = [
        rdfind
        removeReferencesTo
        yarn
      ];

      postBuild = ''
        export HOME=$TMPDIR

        ln -sf ${yarnDeps}/node_modules assets/node_modules
        cp --no-preserve=mode -r ${mixNixDeps.heroicons} deps/heroicons

        mix assets.deploy --no-deps-check
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

  checks = {
    "${name}-test" = beamPackages.mixRunTask (commonArgs
      // {
        pname = "${name}-test";
        src = devSrc;

        nativeBuildInputs = [
          postgresql_16
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

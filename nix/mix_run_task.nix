# NOTE: adapted from https://github.com/NixOS/nixpkgs/blob/872987d040303394aef2fdba5ea5a3ee93e66e67/pkgs/development/beam-modules/mix-release.nix
{
  stdenv,
  lib,
  elixir,
  erlang,
  findutils,
  hex,
  rebar,
  rebar3,
} @ inputs: {
  pname,
  version,
  src,
  mixCommand,
  nativeBuildInputs ? [],
  buildInputs ? [],
  mixEnv ? "prod",
  compileFlags ? [],
  mixNixDeps ? {},
  elixir ? inputs.elixir,
  hex ? inputs.hex.override {inherit elixir;},
  skipCompile ? false,
  enableDebugInfo ? false,
  ...
} @ attrs: let
  overridable = builtins.removeAttrs attrs ["compileFlags" "mixNixDeps"];
  inherit (builtins) isBool;
in
  stdenv.mkDerivation (overridable
    // {
      nativeBuildInputs = nativeBuildInputs ++ [erlang hex elixir];
      buildInputs = buildInputs ++ builtins.attrValues mixNixDeps;

      MIX_ENV = mixEnv;
      MIX_DEBUG =
        if enableDebugInfo
        then 1
        else 0;
      HEX_OFFLINE = 1;
      DEBUG =
        if enableDebugInfo
        then 1
        else 0; # for Rebar3 compilation
      MIX_REBAR = "${rebar}/bin/rebar";
      MIX_REBAR3 = "${rebar3}/bin/rebar3";

      postUnpack = ''
        export HEX_HOME="$TEMPDIR/hex"
        export MIX_HOME="$TEMPDIR/mix"
        export REBAR_GLOBAL_CONFIG_DIR="$TEMPDIR/rebar3"
        export REBAR_CACHE_DIR="$TEMPDIR/rebar3.cache"
      '';

      configurePhase = ''
        runHook preConfigure

        mkdir -p _build/"$MIX_ENV"/lib
        while read -r -d ':' lib; do
          for dir in "$lib"/*; do
          dest=$(basename "$dir" | cut -d '-' -f1)
          build_dir="_build/$MIX_ENV/lib/$dest"
          ((MIX_DEBUG == 1)) && echo "Linking $dir to $build_dir"
          ln -s "$dir" "$build_dir"
          done
        done <<< "$ERL_LIBS:"

        ${lib.optionalString (isBool skipCompile && !skipCompile) ''
          mix deps.compile --no-deps-check --skip-umbrella-children ${lib.concatStringsSep " " compileFlags}
        ''}

        runHook postConfigure
      '';

      buildPhase = ''
        ${lib.optionalString (isBool skipCompile && !skipCompile) ''
          mix compile --no-deps-check ${lib.concatStringsSep " " compileFlags}
        ''}

        runHook preBuild

        mix ${mixCommand}

        runHook postBuild
      '';

      dontFixup = true;

      installPhase = ''
        touch $out
      '';
    })

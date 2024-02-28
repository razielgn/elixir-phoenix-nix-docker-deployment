{
  beamPackages,
  darwin,
  deadnix,
  flyctl,
  glibcLocales,
  inotify-tools,
  just,
  lib,
  mix2nix,
  mkShell,
  nodejs,
  overmind,
  pgcli,
  postgresql_16,
  statix,
  stdenv,
  yarn,
  yarn2nix,
}:
mkShell {
  packages =
    [
      beamPackages.elixir
      beamPackages.hex
      beamPackages.rebar3
      deadnix
      flyctl
      glibcLocales
      just
      mix2nix
      nodejs
      overmind
      pgcli
      postgresql_16
      statix
      yarn
      yarn2nix
    ]
    ++ lib.optionals stdenv.isLinux [
      inotify-tools
    ]
    ++ lib.optionals stdenv.isDarwin [
      darwin.apple_sdk.frameworks.CoreFoundation
      darwin.apple_sdk.frameworks.CoreServices
    ];

  shellHook = ''
    export LANG=en_US.UTF-8
    export ERL_AFLAGS="-kernel shell_history enabled"
    export PGDATA="$PWD/db"
    export DATABASE_URL="postgres://postgres:postgres@localhost:43241/foo_dev"
    export TEST_DATABASE_URL="postgres://postgres:postgres@localhost:43241/foo_test"
  '';
}

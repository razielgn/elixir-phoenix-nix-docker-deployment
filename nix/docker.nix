{
  app,
  coreutils,
  dockerTools,
  gawk,
  gnugrep,
  gnused,
  writeShellScriptBin,
}: let
  entrypoint = writeShellScriptBin "entrypoint.sh" ''
    set -eEou pipefail

    ${app.rel}/bin/foo eval Foo.Release.migrate
    ${app.rel}/bin/foo start
  '';
in
  dockerTools.streamLayeredImage {
    name = "foo";

    tag = "latest";

    contents = [
      dockerTools.usrBinEnv
      dockerTools.binSh
      coreutils
      gnugrep
      gnused
      gawk
    ];

    config = {
      Entrypoint = ["${entrypoint}/bin/entrypoint.sh"];
      Env = [
        "LC_ALL=C.UTF-8"
        "PATH=${app.rel}/bin:/bin"
        "ECTO_IPV6=true"
        "ERL_AFLAGS=-proto_dist inet6_tcp"
      ];
      ExposedPorts = {
        "4000/tcp" = {};
      };
    };
  }

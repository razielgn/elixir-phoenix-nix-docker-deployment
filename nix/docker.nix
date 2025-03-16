{
  app,
  bash,
  buildEnv,
  nix2container,
}:
nix2container.buildImage {
  name = "foo";
  tag = "latest";

  config = {
    Entrypoint = ["${app.entrypoint}"];

    ExposedPorts = {
      "4000/tcp" = {};
    };

    Env = [
      "ECTO_IPV6=true"
      "ERL_AFLAGS=-proto_dist inet6_tcp"
      "LC_ALL=C.UTF-8"
    ];
  };

  copyToRoot = buildEnv {
    name = "root";

    paths = [
      bash
      app.rel
    ];

    pathsToLink = ["/bin"];
  };
}

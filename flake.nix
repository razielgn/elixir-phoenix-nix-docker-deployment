{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    nix-filter.url = "github:numtide/nix-filter";
  };

  outputs = {
    nixpkgs,
    flake-utils,
    nix-filter,
    ...
  }:
    flake-utils.lib.eachDefaultSystem (system: let
      pkgs = import nixpkgs {
        inherit system;

        overlays = [
          (import ./nix/elixir_overlay.nix)
          (import ./nix/overlay.nix)
        ];
      };

      nix = pkgs.callPackage ./nix/nix.nix {filter = nix-filter.lib;};

      devShell = pkgs.callPackage ./nix/dev.nix {};

      app = pkgs.callPackage ./nix/elixir.nix {};

      dockerImage = pkgs.callPackage ./nix/docker.nix {inherit app;};
    in {
      checks = app.checks // nix.checks;

      packages = {
        default = app.rel;

        inherit dockerImage;
        inherit (pkgs) mix2nix yarn2nix skopeo flyctl;
      };

      devShells.default = devShell;

      formatter = pkgs.alejandra;
    });
}

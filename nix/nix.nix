{
  lib,
  filter,
  runCommand,
  alejandra,
  statix,
}: let
  name = "nix";

  # Filter source files to make sure the formatter derivation is cached and
  # is not rebuilt when nothing changes.
  src = filter {
    root = ../.;

    include = with filter; [
      (or_ (inDirectory "nix") (matchExt "nix"))
    ];
  };
in {
  checks = {
    nix-format = runCommand "${name}-format" {} ''
      ${alejandra}/bin/alejandra --check ${src}
      touch $out
    '';

    nix-statix = runCommand "${name}-statix" {} ''
      ${statix}/bin/statix check ${src}
      touch $out
    '';
  };
}

final: prev: let
  beamPackages = prev.beam_minimal.packagesWith prev.beam_minimal.interpreters.erlang_27;
  elixir = beamPackages.elixir_1_17;
in {
  inherit elixir;
  inherit (beamPackages) erlang;

  beamPackages = beamPackages.extend (final: prev: {
    inherit elixir;

    mixRunTask = prev.callPackage ./mix_run_task.nix {inherit elixir;};
  });
}

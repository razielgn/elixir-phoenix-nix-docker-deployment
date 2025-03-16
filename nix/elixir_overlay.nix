final: prev: {
  beamPackages = prev.beamMinimal27Packages.extend (final: prev: {
    mixRunTask = final.callPackage ./mix_run_task.nix {};
  });

  elixir = final.beamPackages.elixir_1_18;
  inherit (final.beamPackages) erlang rebar3;
}

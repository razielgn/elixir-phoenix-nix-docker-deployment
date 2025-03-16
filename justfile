update-deps: mix2nix yarn2nix

mix2nix:
  mix2nix > nix/mix_deps.nix
  nix fmt .

yarn2nix:
  cd assets && yarn2nix > ../nix/yarn_deps.nix
  nix fmt .

up:
  overmind start -D

down:
  overmind stop

clean:
  rm -rf db/

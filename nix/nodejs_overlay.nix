final: prev: rec {
  nodejs = prev.nodejs_20;
  yarn = prev.yarn.override {inherit nodejs;};
}

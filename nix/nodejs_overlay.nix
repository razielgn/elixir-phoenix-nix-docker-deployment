final: prev: rec {
  nodejs = prev.nodejs_22;
  yarn = prev.yarn.override {inherit nodejs;};
}

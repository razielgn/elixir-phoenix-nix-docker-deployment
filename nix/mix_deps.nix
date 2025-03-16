{
  lib,
  beamPackages,
  overrides ? (x: y: {}),
}: let
  buildRebar3 = lib.makeOverridable beamPackages.buildRebar3;
  buildMix = lib.makeOverridable beamPackages.buildMix;
  buildErlangMk = lib.makeOverridable beamPackages.buildErlangMk;

  self = packages // (overrides self packages);

  packages = with beamPackages;
  with self; {
    bandit = buildMix rec {
      name = "bandit";
      version = "1.6.8";

      src = fetchHex {
        pkg = "bandit";
        version = "${version}";
        sha256 = "4fc08c8d4733735d175a007ecb25895e84d09292b0180a2e9f16948182c88b6e";
      };

      beamDeps = [hpax plug telemetry thousand_island websock];
    };

    bunt = buildMix rec {
      name = "bunt";
      version = "1.0.0";

      src = fetchHex {
        pkg = "bunt";
        version = "${version}";
        sha256 = "dc5f86aa08a5f6fa6b8096f0735c4e76d54ae5c9fa2c143e5a1fc7c1cd9bb6b5";
      };

      beamDeps = [];
    };

    castore = buildMix rec {
      name = "castore";
      version = "1.0.12";

      src = fetchHex {
        pkg = "castore";
        version = "${version}";
        sha256 = "3dca286b2186055ba0c9449b4e95b97bf1b57b47c1f2644555879e659960c224";
      };

      beamDeps = [];
    };

    credo = buildMix rec {
      name = "credo";
      version = "1.7.11";

      src = fetchHex {
        pkg = "credo";
        version = "${version}";
        sha256 = "56826b4306843253a66e47ae45e98e7d284ee1f95d53d1612bb483f88a8cf219";
      };

      beamDeps = [bunt file_system jason];
    };

    db_connection = buildMix rec {
      name = "db_connection";
      version = "2.7.0";

      src = fetchHex {
        pkg = "db_connection";
        version = "${version}";
        sha256 = "dcf08f31b2701f857dfc787fbad78223d61a32204f217f15e881dd93e4bdd3ff";
      };

      beamDeps = [telemetry];
    };

    decimal = buildMix rec {
      name = "decimal";
      version = "2.3.0";

      src = fetchHex {
        pkg = "decimal";
        version = "${version}";
        sha256 = "a4d66355cb29cb47c3cf30e71329e58361cfcb37c34235ef3bf1d7bf3773aeac";
      };

      beamDeps = [];
    };

    dns_cluster = buildMix rec {
      name = "dns_cluster";
      version = "0.2.0";

      src = fetchHex {
        pkg = "dns_cluster";
        version = "${version}";
        sha256 = "ba6f1893411c69c01b9e8e8f772062535a4cf70f3f35bcc964a324078d8c8240";
      };

      beamDeps = [];
    };

    ecto = buildMix rec {
      name = "ecto";
      version = "3.12.5";

      src = fetchHex {
        pkg = "ecto";
        version = "${version}";
        sha256 = "6eb18e80bef8bb57e17f5a7f068a1719fbda384d40fc37acb8eb8aeca493b6ea";
      };

      beamDeps = [decimal jason telemetry];
    };

    ecto_sql = buildMix rec {
      name = "ecto_sql";
      version = "3.12.1";

      src = fetchHex {
        pkg = "ecto_sql";
        version = "${version}";
        sha256 = "aff5b958a899762c5f09028c847569f7dfb9cc9d63bdb8133bff8a5546de6bf5";
      };

      beamDeps = [db_connection ecto postgrex telemetry];
    };

    expo = buildMix rec {
      name = "expo";
      version = "1.1.0";

      src = fetchHex {
        pkg = "expo";
        version = "${version}";
        sha256 = "fbadf93f4700fb44c331362177bdca9eeb8097e8b0ef525c9cc501cb9917c960";
      };

      beamDeps = [];
    };

    file_system = buildMix rec {
      name = "file_system";
      version = "1.1.0";

      src = fetchHex {
        pkg = "file_system";
        version = "${version}";
        sha256 = "bfcf81244f416871f2a2e15c1b515287faa5db9c6bcf290222206d120b3d43f6";
      };

      beamDeps = [];
    };

    finch = buildMix rec {
      name = "finch";
      version = "0.19.0";

      src = fetchHex {
        pkg = "finch";
        version = "${version}";
        sha256 = "fc5324ce209125d1e2fa0fcd2634601c52a787aff1cd33ee833664a5af4ea2b6";
      };

      beamDeps = [mime mint nimble_options nimble_pool telemetry];
    };

    floki = buildMix rec {
      name = "floki";
      version = "0.37.0";

      src = fetchHex {
        pkg = "floki";
        version = "${version}";
        sha256 = "516a0c15a69f78c47dc8e0b9b3724b29608aa6619379f91b1ffa47109b5d0dd3";
      };

      beamDeps = [];
    };

    gettext = buildMix rec {
      name = "gettext";
      version = "0.26.2";

      src = fetchHex {
        pkg = "gettext";
        version = "${version}";
        sha256 = "aa978504bcf76511efdc22d580ba08e2279caab1066b76bb9aa81c4a1e0a32a5";
      };

      beamDeps = [expo];
    };

    heroicons = buildMix rec {
      name = "heroicons";
      version = "0.5.6";

      src = fetchHex {
        pkg = "heroicons";
        version = "${version}";
        sha256 = "ca267f02a5fa695a4178a737b649fb6644a2e399639d4ba7964c18e8a58c2352";
      };

      beamDeps = [castore phoenix_live_view];
    };

    hpax = buildMix rec {
      name = "hpax";
      version = "1.0.2";

      src = fetchHex {
        pkg = "hpax";
        version = "${version}";
        sha256 = "2f09b4c1074e0abd846747329eaa26d535be0eb3d189fa69d812bfb8bfefd32f";
      };

      beamDeps = [];
    };

    jason = buildMix rec {
      name = "jason";
      version = "1.4.4";

      src = fetchHex {
        pkg = "jason";
        version = "${version}";
        sha256 = "c5eb0cab91f094599f94d55bc63409236a8ec69a21a67814529e8d5f6cc90b3b";
      };

      beamDeps = [decimal];
    };

    mime = buildMix rec {
      name = "mime";
      version = "2.0.6";

      src = fetchHex {
        pkg = "mime";
        version = "${version}";
        sha256 = "c9945363a6b26d747389aac3643f8e0e09d30499a138ad64fe8fd1d13d9b153e";
      };

      beamDeps = [];
    };

    mint = buildMix rec {
      name = "mint";
      version = "1.7.1";

      src = fetchHex {
        pkg = "mint";
        version = "${version}";
        sha256 = "fceba0a4d0f24301ddee3024ae116df1c3f4bb7a563a731f45fdfeb9d39a231b";
      };

      beamDeps = [castore hpax];
    };

    nimble_options = buildMix rec {
      name = "nimble_options";
      version = "1.1.1";

      src = fetchHex {
        pkg = "nimble_options";
        version = "${version}";
        sha256 = "821b2470ca9442c4b6984882fe9bb0389371b8ddec4d45a9504f00a66f650b44";
      };

      beamDeps = [];
    };

    nimble_pool = buildMix rec {
      name = "nimble_pool";
      version = "1.1.0";

      src = fetchHex {
        pkg = "nimble_pool";
        version = "${version}";
        sha256 = "af2e4e6b34197db81f7aad230c1118eac993acc0dae6bc83bac0126d4ae0813a";
      };

      beamDeps = [];
    };

    phoenix = buildMix rec {
      name = "phoenix";
      version = "1.7.20";

      src = fetchHex {
        pkg = "phoenix";
        version = "${version}";
        sha256 = "6be2ab98302e8784a31829e0d50d8bdfa81a23cd912c395bafd8b8bfb5a086c2";
      };

      beamDeps = [castore jason phoenix_pubsub phoenix_template plug plug_crypto telemetry websock_adapter];
    };

    phoenix_ecto = buildMix rec {
      name = "phoenix_ecto";
      version = "4.6.3";

      src = fetchHex {
        pkg = "phoenix_ecto";
        version = "${version}";
        sha256 = "909502956916a657a197f94cc1206d9a65247538de8a5e186f7537c895d95764";
      };

      beamDeps = [ecto phoenix_html plug postgrex];
    };

    phoenix_html = buildMix rec {
      name = "phoenix_html";
      version = "4.2.1";

      src = fetchHex {
        pkg = "phoenix_html";
        version = "${version}";
        sha256 = "cff108100ae2715dd959ae8f2a8cef8e20b593f8dfd031c9cba92702cf23e053";
      };

      beamDeps = [];
    };

    phoenix_live_dashboard = buildMix rec {
      name = "phoenix_live_dashboard";
      version = "0.8.6";

      src = fetchHex {
        pkg = "phoenix_live_dashboard";
        version = "${version}";
        sha256 = "1681ab813ec26ca6915beb3414aa138f298e17721dc6a2bde9e6eb8a62360ff6";
      };

      beamDeps = [ecto mime phoenix_live_view telemetry_metrics];
    };

    phoenix_live_reload = buildMix rec {
      name = "phoenix_live_reload";
      version = "1.5.3";

      src = fetchHex {
        pkg = "phoenix_live_reload";
        version = "${version}";
        sha256 = "b4ec9cd73cb01ff1bd1cac92e045d13e7030330b74164297d1aee3907b54803c";
      };

      beamDeps = [file_system phoenix];
    };

    phoenix_live_view = buildMix rec {
      name = "phoenix_live_view";
      version = "1.0.5";

      src = fetchHex {
        pkg = "phoenix_live_view";
        version = "${version}";
        sha256 = "94abbc84df8a93a64514fc41528695d7326b6f3095e906b32f264ec4280811f3";
      };

      beamDeps = [floki jason phoenix phoenix_html phoenix_template plug telemetry];
    };

    phoenix_pubsub = buildMix rec {
      name = "phoenix_pubsub";
      version = "2.1.3";

      src = fetchHex {
        pkg = "phoenix_pubsub";
        version = "${version}";
        sha256 = "bba06bc1dcfd8cb086759f0edc94a8ba2bc8896d5331a1e2c2902bf8e36ee502";
      };

      beamDeps = [];
    };

    phoenix_template = buildMix rec {
      name = "phoenix_template";
      version = "1.0.4";

      src = fetchHex {
        pkg = "phoenix_template";
        version = "${version}";
        sha256 = "2c0c81f0e5c6753faf5cca2f229c9709919aba34fab866d3bc05060c9c444206";
      };

      beamDeps = [phoenix_html];
    };

    plug = buildMix rec {
      name = "plug";
      version = "1.17.0";

      src = fetchHex {
        pkg = "plug";
        version = "${version}";
        sha256 = "f6692046652a69a00a5a21d0b7e11fcf401064839d59d6b8787f23af55b1e6bc";
      };

      beamDeps = [mime plug_crypto telemetry];
    };

    plug_crypto = buildMix rec {
      name = "plug_crypto";
      version = "2.1.0";

      src = fetchHex {
        pkg = "plug_crypto";
        version = "${version}";
        sha256 = "131216a4b030b8f8ce0f26038bc4421ae60e4bb95c5cf5395e1421437824c4fa";
      };

      beamDeps = [];
    };

    postgrex = buildMix rec {
      name = "postgrex";
      version = "0.20.0";

      src = fetchHex {
        pkg = "postgrex";
        version = "${version}";
        sha256 = "d36ef8b36f323d29505314f704e21a1a038e2dc387c6409ee0cd24144e187c0f";
      };

      beamDeps = [db_connection decimal jason];
    };

    swoosh = buildMix rec {
      name = "swoosh";
      version = "1.18.2";

      src = fetchHex {
        pkg = "swoosh";
        version = "${version}";
        sha256 = "032fcb2179f6d4e3b90030514ddc8d3946d8b046be939d121db480ca78adbc38";
      };

      beamDeps = [bandit finch jason mime plug telemetry];
    };

    telemetry = buildRebar3 rec {
      name = "telemetry";
      version = "1.3.0";

      src = fetchHex {
        pkg = "telemetry";
        version = "${version}";
        sha256 = "7015fc8919dbe63764f4b4b87a95b7c0996bd539e0d499be6ec9d7f3875b79e6";
      };

      beamDeps = [];
    };

    telemetry_metrics = buildMix rec {
      name = "telemetry_metrics";
      version = "1.1.0";

      src = fetchHex {
        pkg = "telemetry_metrics";
        version = "${version}";
        sha256 = "e7b79e8ddfde70adb6db8a6623d1778ec66401f366e9a8f5dd0955c56bc8ce67";
      };

      beamDeps = [telemetry];
    };

    telemetry_poller = buildRebar3 rec {
      name = "telemetry_poller";
      version = "1.1.0";

      src = fetchHex {
        pkg = "telemetry_poller";
        version = "${version}";
        sha256 = "9eb9d9cbfd81cbd7cdd24682f8711b6e2b691289a0de6826e58452f28c103c8f";
      };

      beamDeps = [telemetry];
    };

    thousand_island = buildMix rec {
      name = "thousand_island";
      version = "1.3.11";

      src = fetchHex {
        pkg = "thousand_island";
        version = "${version}";
        sha256 = "555c18c62027f45d9c80df389c3d01d86ba11014652c00be26e33b1b64e98d29";
      };

      beamDeps = [telemetry];
    };

    websock = buildMix rec {
      name = "websock";
      version = "0.5.3";

      src = fetchHex {
        pkg = "websock";
        version = "${version}";
        sha256 = "6105453d7fac22c712ad66fab1d45abdf049868f253cf719b625151460b8b453";
      };

      beamDeps = [];
    };

    websock_adapter = buildMix rec {
      name = "websock_adapter";
      version = "0.5.8";

      src = fetchHex {
        pkg = "websock_adapter";
        version = "${version}";
        sha256 = "315b9a1865552212b5f35140ad194e67ce31af45bcee443d4ecb96b5fd3f3782";
      };

      beamDeps = [bandit plug websock];
    };
  };
in
  self

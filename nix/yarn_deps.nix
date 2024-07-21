{
  fetchurl,
  fetchgit,
  linkFarm,
  runCommand,
  gnutar,
}: rec {
  offline_cache = linkFarm "offline" packages;
  packages = [
    {
      name = "_alloc_quick_lru___quick_lru_5.2.0.tgz";
      path = fetchurl {
        name = "_alloc_quick_lru___quick_lru_5.2.0.tgz";
        url = "https://registry.yarnpkg.com/@alloc/quick-lru/-/quick-lru-5.2.0.tgz";
        sha512 = "UrcABB+4bUrFABwbluTIBErXwvbsU/V7TZWfmbgJfbkwiBuziS9gxdODUyuiecfdGQ85jglMW6juS3+z5TsKLw==";
      };
    }
    {
      name = "_esbuild_aix_ppc64___aix_ppc64_0.23.0.tgz";
      path = fetchurl {
        name = "_esbuild_aix_ppc64___aix_ppc64_0.23.0.tgz";
        url = "https://registry.yarnpkg.com/@esbuild/aix-ppc64/-/aix-ppc64-0.23.0.tgz";
        sha512 = "3sG8Zwa5fMcA9bgqB8AfWPQ+HFke6uD3h1s3RIwUNK8EG7a4buxvuFTs3j1IMs2NXAk9F30C/FF4vxRgQCcmoQ==";
      };
    }
    {
      name = "_esbuild_android_arm64___android_arm64_0.23.0.tgz";
      path = fetchurl {
        name = "_esbuild_android_arm64___android_arm64_0.23.0.tgz";
        url = "https://registry.yarnpkg.com/@esbuild/android-arm64/-/android-arm64-0.23.0.tgz";
        sha512 = "EuHFUYkAVfU4qBdyivULuu03FhJO4IJN9PGuABGrFy4vUuzk91P2d+npxHcFdpUnfYKy0PuV+n6bKIpHOB3prQ==";
      };
    }
    {
      name = "_esbuild_android_arm___android_arm_0.23.0.tgz";
      path = fetchurl {
        name = "_esbuild_android_arm___android_arm_0.23.0.tgz";
        url = "https://registry.yarnpkg.com/@esbuild/android-arm/-/android-arm-0.23.0.tgz";
        sha512 = "+KuOHTKKyIKgEEqKbGTK8W7mPp+hKinbMBeEnNzjJGyFcWsfrXjSTNluJHCY1RqhxFurdD8uNXQDei7qDlR6+g==";
      };
    }
    {
      name = "_esbuild_android_x64___android_x64_0.23.0.tgz";
      path = fetchurl {
        name = "_esbuild_android_x64___android_x64_0.23.0.tgz";
        url = "https://registry.yarnpkg.com/@esbuild/android-x64/-/android-x64-0.23.0.tgz";
        sha512 = "WRrmKidLoKDl56LsbBMhzTTBxrsVwTKdNbKDalbEZr0tcsBgCLbEtoNthOW6PX942YiYq8HzEnb4yWQMLQuipQ==";
      };
    }
    {
      name = "_esbuild_darwin_arm64___darwin_arm64_0.23.0.tgz";
      path = fetchurl {
        name = "_esbuild_darwin_arm64___darwin_arm64_0.23.0.tgz";
        url = "https://registry.yarnpkg.com/@esbuild/darwin-arm64/-/darwin-arm64-0.23.0.tgz";
        sha512 = "YLntie/IdS31H54Ogdn+v50NuoWF5BDkEUFpiOChVa9UnKpftgwzZRrI4J132ETIi+D8n6xh9IviFV3eXdxfow==";
      };
    }
    {
      name = "_esbuild_darwin_x64___darwin_x64_0.23.0.tgz";
      path = fetchurl {
        name = "_esbuild_darwin_x64___darwin_x64_0.23.0.tgz";
        url = "https://registry.yarnpkg.com/@esbuild/darwin-x64/-/darwin-x64-0.23.0.tgz";
        sha512 = "IMQ6eme4AfznElesHUPDZ+teuGwoRmVuuixu7sv92ZkdQcPbsNHzutd+rAfaBKo8YK3IrBEi9SLLKWJdEvJniQ==";
      };
    }
    {
      name = "_esbuild_freebsd_arm64___freebsd_arm64_0.23.0.tgz";
      path = fetchurl {
        name = "_esbuild_freebsd_arm64___freebsd_arm64_0.23.0.tgz";
        url = "https://registry.yarnpkg.com/@esbuild/freebsd-arm64/-/freebsd-arm64-0.23.0.tgz";
        sha512 = "0muYWCng5vqaxobq6LB3YNtevDFSAZGlgtLoAc81PjUfiFz36n4KMpwhtAd4he8ToSI3TGyuhyx5xmiWNYZFyw==";
      };
    }
    {
      name = "_esbuild_freebsd_x64___freebsd_x64_0.23.0.tgz";
      path = fetchurl {
        name = "_esbuild_freebsd_x64___freebsd_x64_0.23.0.tgz";
        url = "https://registry.yarnpkg.com/@esbuild/freebsd-x64/-/freebsd-x64-0.23.0.tgz";
        sha512 = "XKDVu8IsD0/q3foBzsXGt/KjD/yTKBCIwOHE1XwiXmrRwrX6Hbnd5Eqn/WvDekddK21tfszBSrE/WMaZh+1buQ==";
      };
    }
    {
      name = "_esbuild_linux_arm64___linux_arm64_0.23.0.tgz";
      path = fetchurl {
        name = "_esbuild_linux_arm64___linux_arm64_0.23.0.tgz";
        url = "https://registry.yarnpkg.com/@esbuild/linux-arm64/-/linux-arm64-0.23.0.tgz";
        sha512 = "j1t5iG8jE7BhonbsEg5d9qOYcVZv/Rv6tghaXM/Ug9xahM0nX/H2gfu6X6z11QRTMT6+aywOMA8TDkhPo8aCGw==";
      };
    }
    {
      name = "_esbuild_linux_arm___linux_arm_0.23.0.tgz";
      path = fetchurl {
        name = "_esbuild_linux_arm___linux_arm_0.23.0.tgz";
        url = "https://registry.yarnpkg.com/@esbuild/linux-arm/-/linux-arm-0.23.0.tgz";
        sha512 = "SEELSTEtOFu5LPykzA395Mc+54RMg1EUgXP+iw2SJ72+ooMwVsgfuwXo5Fn0wXNgWZsTVHwY2cg4Vi/bOD88qw==";
      };
    }
    {
      name = "_esbuild_linux_ia32___linux_ia32_0.23.0.tgz";
      path = fetchurl {
        name = "_esbuild_linux_ia32___linux_ia32_0.23.0.tgz";
        url = "https://registry.yarnpkg.com/@esbuild/linux-ia32/-/linux-ia32-0.23.0.tgz";
        sha512 = "P7O5Tkh2NbgIm2R6x1zGJJsnacDzTFcRWZyTTMgFdVit6E98LTxO+v8LCCLWRvPrjdzXHx9FEOA8oAZPyApWUA==";
      };
    }
    {
      name = "_esbuild_linux_loong64___linux_loong64_0.23.0.tgz";
      path = fetchurl {
        name = "_esbuild_linux_loong64___linux_loong64_0.23.0.tgz";
        url = "https://registry.yarnpkg.com/@esbuild/linux-loong64/-/linux-loong64-0.23.0.tgz";
        sha512 = "InQwepswq6urikQiIC/kkx412fqUZudBO4SYKu0N+tGhXRWUqAx+Q+341tFV6QdBifpjYgUndV1hhMq3WeJi7A==";
      };
    }
    {
      name = "_esbuild_linux_mips64el___linux_mips64el_0.23.0.tgz";
      path = fetchurl {
        name = "_esbuild_linux_mips64el___linux_mips64el_0.23.0.tgz";
        url = "https://registry.yarnpkg.com/@esbuild/linux-mips64el/-/linux-mips64el-0.23.0.tgz";
        sha512 = "J9rflLtqdYrxHv2FqXE2i1ELgNjT+JFURt/uDMoPQLcjWQA5wDKgQA4t/dTqGa88ZVECKaD0TctwsUfHbVoi4w==";
      };
    }
    {
      name = "_esbuild_linux_ppc64___linux_ppc64_0.23.0.tgz";
      path = fetchurl {
        name = "_esbuild_linux_ppc64___linux_ppc64_0.23.0.tgz";
        url = "https://registry.yarnpkg.com/@esbuild/linux-ppc64/-/linux-ppc64-0.23.0.tgz";
        sha512 = "cShCXtEOVc5GxU0fM+dsFD10qZ5UpcQ8AM22bYj0u/yaAykWnqXJDpd77ublcX6vdDsWLuweeuSNZk4yUxZwtw==";
      };
    }
    {
      name = "_esbuild_linux_riscv64___linux_riscv64_0.23.0.tgz";
      path = fetchurl {
        name = "_esbuild_linux_riscv64___linux_riscv64_0.23.0.tgz";
        url = "https://registry.yarnpkg.com/@esbuild/linux-riscv64/-/linux-riscv64-0.23.0.tgz";
        sha512 = "HEtaN7Y5UB4tZPeQmgz/UhzoEyYftbMXrBCUjINGjh3uil+rB/QzzpMshz3cNUxqXN7Vr93zzVtpIDL99t9aRw==";
      };
    }
    {
      name = "_esbuild_linux_s390x___linux_s390x_0.23.0.tgz";
      path = fetchurl {
        name = "_esbuild_linux_s390x___linux_s390x_0.23.0.tgz";
        url = "https://registry.yarnpkg.com/@esbuild/linux-s390x/-/linux-s390x-0.23.0.tgz";
        sha512 = "WDi3+NVAuyjg/Wxi+o5KPqRbZY0QhI9TjrEEm+8dmpY9Xir8+HE/HNx2JoLckhKbFopW0RdO2D72w8trZOV+Wg==";
      };
    }
    {
      name = "_esbuild_linux_x64___linux_x64_0.23.0.tgz";
      path = fetchurl {
        name = "_esbuild_linux_x64___linux_x64_0.23.0.tgz";
        url = "https://registry.yarnpkg.com/@esbuild/linux-x64/-/linux-x64-0.23.0.tgz";
        sha512 = "a3pMQhUEJkITgAw6e0bWA+F+vFtCciMjW/LPtoj99MhVt+Mfb6bbL9hu2wmTZgNd994qTAEw+U/r6k3qHWWaOQ==";
      };
    }
    {
      name = "_esbuild_netbsd_x64___netbsd_x64_0.23.0.tgz";
      path = fetchurl {
        name = "_esbuild_netbsd_x64___netbsd_x64_0.23.0.tgz";
        url = "https://registry.yarnpkg.com/@esbuild/netbsd-x64/-/netbsd-x64-0.23.0.tgz";
        sha512 = "cRK+YDem7lFTs2Q5nEv/HHc4LnrfBCbH5+JHu6wm2eP+d8OZNoSMYgPZJq78vqQ9g+9+nMuIsAO7skzphRXHyw==";
      };
    }
    {
      name = "_esbuild_openbsd_arm64___openbsd_arm64_0.23.0.tgz";
      path = fetchurl {
        name = "_esbuild_openbsd_arm64___openbsd_arm64_0.23.0.tgz";
        url = "https://registry.yarnpkg.com/@esbuild/openbsd-arm64/-/openbsd-arm64-0.23.0.tgz";
        sha512 = "suXjq53gERueVWu0OKxzWqk7NxiUWSUlrxoZK7usiF50C6ipColGR5qie2496iKGYNLhDZkPxBI3erbnYkU0rQ==";
      };
    }
    {
      name = "_esbuild_openbsd_x64___openbsd_x64_0.23.0.tgz";
      path = fetchurl {
        name = "_esbuild_openbsd_x64___openbsd_x64_0.23.0.tgz";
        url = "https://registry.yarnpkg.com/@esbuild/openbsd-x64/-/openbsd-x64-0.23.0.tgz";
        sha512 = "6p3nHpby0DM/v15IFKMjAaayFhqnXV52aEmv1whZHX56pdkK+MEaLoQWj+H42ssFarP1PcomVhbsR4pkz09qBg==";
      };
    }
    {
      name = "_esbuild_sunos_x64___sunos_x64_0.23.0.tgz";
      path = fetchurl {
        name = "_esbuild_sunos_x64___sunos_x64_0.23.0.tgz";
        url = "https://registry.yarnpkg.com/@esbuild/sunos-x64/-/sunos-x64-0.23.0.tgz";
        sha512 = "BFelBGfrBwk6LVrmFzCq1u1dZbG4zy/Kp93w2+y83Q5UGYF1d8sCzeLI9NXjKyujjBBniQa8R8PzLFAUrSM9OA==";
      };
    }
    {
      name = "_esbuild_win32_arm64___win32_arm64_0.23.0.tgz";
      path = fetchurl {
        name = "_esbuild_win32_arm64___win32_arm64_0.23.0.tgz";
        url = "https://registry.yarnpkg.com/@esbuild/win32-arm64/-/win32-arm64-0.23.0.tgz";
        sha512 = "lY6AC8p4Cnb7xYHuIxQ6iYPe6MfO2CC43XXKo9nBXDb35krYt7KGhQnOkRGar5psxYkircpCqfbNDB4uJbS2jQ==";
      };
    }
    {
      name = "_esbuild_win32_ia32___win32_ia32_0.23.0.tgz";
      path = fetchurl {
        name = "_esbuild_win32_ia32___win32_ia32_0.23.0.tgz";
        url = "https://registry.yarnpkg.com/@esbuild/win32-ia32/-/win32-ia32-0.23.0.tgz";
        sha512 = "7L1bHlOTcO4ByvI7OXVI5pNN6HSu6pUQq9yodga8izeuB1KcT2UkHaH6118QJwopExPn0rMHIseCTx1CRo/uNA==";
      };
    }
    {
      name = "_esbuild_win32_x64___win32_x64_0.23.0.tgz";
      path = fetchurl {
        name = "_esbuild_win32_x64___win32_x64_0.23.0.tgz";
        url = "https://registry.yarnpkg.com/@esbuild/win32-x64/-/win32-x64-0.23.0.tgz";
        sha512 = "Arm+WgUFLUATuoxCJcahGuk6Yj9Pzxd6l11Zb/2aAuv5kWWvvfhLFo2fni4uSK5vzlUdCGZ/BdV5tH8klj8p8g==";
      };
    }
    {
      name = "_isaacs_cliui___cliui_8.0.2.tgz";
      path = fetchurl {
        name = "_isaacs_cliui___cliui_8.0.2.tgz";
        url = "https://registry.yarnpkg.com/@isaacs/cliui/-/cliui-8.0.2.tgz";
        sha512 = "O8jcjabXaleOG9DQ0+ARXWZBTfnP4WNAqzuiJK7ll44AmxGKv/J2M4TPjxjY3znBCfvBXFzucm1twdyFybFqEA==";
      };
    }
    {
      name = "_jridgewell_gen_mapping___gen_mapping_0.3.5.tgz";
      path = fetchurl {
        name = "_jridgewell_gen_mapping___gen_mapping_0.3.5.tgz";
        url = "https://registry.yarnpkg.com/@jridgewell/gen-mapping/-/gen-mapping-0.3.5.tgz";
        sha512 = "IzL8ZoEDIBRWEzlCcRhOaCupYyN5gdIK+Q6fbFdPDg6HqX6jpkItn7DFIpW9LQzXG6Df9sA7+OKnq0qlz/GaQg==";
      };
    }
    {
      name = "_jridgewell_resolve_uri___resolve_uri_3.1.2.tgz";
      path = fetchurl {
        name = "_jridgewell_resolve_uri___resolve_uri_3.1.2.tgz";
        url = "https://registry.yarnpkg.com/@jridgewell/resolve-uri/-/resolve-uri-3.1.2.tgz";
        sha512 = "bRISgCIjP20/tbWSPWMEi54QVPRZExkuD9lJL+UIxUKtwVJA8wW1Trb1jMs1RFXo1CBTNZ/5hpC9QvmKWdopKw==";
      };
    }
    {
      name = "_jridgewell_set_array___set_array_1.2.1.tgz";
      path = fetchurl {
        name = "_jridgewell_set_array___set_array_1.2.1.tgz";
        url = "https://registry.yarnpkg.com/@jridgewell/set-array/-/set-array-1.2.1.tgz";
        sha512 = "R8gLRTZeyp03ymzP/6Lil/28tGeGEzhx1q2k703KGWRAI1VdvPIXdG70VJc2pAMw3NA6JKL5hhFu1sJX0Mnn/A==";
      };
    }
    {
      name = "_jridgewell_sourcemap_codec___sourcemap_codec_1.5.0.tgz";
      path = fetchurl {
        name = "_jridgewell_sourcemap_codec___sourcemap_codec_1.5.0.tgz";
        url = "https://registry.yarnpkg.com/@jridgewell/sourcemap-codec/-/sourcemap-codec-1.5.0.tgz";
        sha512 = "gv3ZRaISU3fjPAgNsriBRqGWQL6quFx04YMPW/zD8XMLsU32mhCCbfbO6KZFLjvYpCZ8zyDEgqsgf+PwPaM7GQ==";
      };
    }
    {
      name = "_jridgewell_trace_mapping___trace_mapping_0.3.25.tgz";
      path = fetchurl {
        name = "_jridgewell_trace_mapping___trace_mapping_0.3.25.tgz";
        url = "https://registry.yarnpkg.com/@jridgewell/trace-mapping/-/trace-mapping-0.3.25.tgz";
        sha512 = "vNk6aEwybGtawWmy/PzwnGDOjCkLWSD2wqvjGGAgOAwCGWySYXfYoxt00IJkTF+8Lb57DwOb3Aa0o9CApepiYQ==";
      };
    }
    {
      name = "_nodelib_fs.scandir___fs.scandir_2.1.5.tgz";
      path = fetchurl {
        name = "_nodelib_fs.scandir___fs.scandir_2.1.5.tgz";
        url = "https://registry.yarnpkg.com/@nodelib/fs.scandir/-/fs.scandir-2.1.5.tgz";
        sha512 = "vq24Bq3ym5HEQm2NKCr3yXDwjc7vTsEThRDnkp2DK9p1uqLR+DHurm/NOTo0KG7HYHU7eppKZj3MyqYuMBf62g==";
      };
    }
    {
      name = "_nodelib_fs.stat___fs.stat_2.0.5.tgz";
      path = fetchurl {
        name = "_nodelib_fs.stat___fs.stat_2.0.5.tgz";
        url = "https://registry.yarnpkg.com/@nodelib/fs.stat/-/fs.stat-2.0.5.tgz";
        sha512 = "RkhPPp2zrqDAQA/2jNhnztcPAlv64XdhIp7a7454A5ovI7Bukxgt7MX7udwAu3zg1DcpPU0rz3VV1SeaqvY4+A==";
      };
    }
    {
      name = "_nodelib_fs.walk___fs.walk_1.2.8.tgz";
      path = fetchurl {
        name = "_nodelib_fs.walk___fs.walk_1.2.8.tgz";
        url = "https://registry.yarnpkg.com/@nodelib/fs.walk/-/fs.walk-1.2.8.tgz";
        sha512 = "oGB+UxlgWcgQkgwo8GcEGwemoTFt3FIO9ababBmaGwXIoBKZ+GTy0pP185beGg7Llih/NSHSV2XAs1lnznocSg==";
      };
    }
    {
      name = "_pkgjs_parseargs___parseargs_0.11.0.tgz";
      path = fetchurl {
        name = "_pkgjs_parseargs___parseargs_0.11.0.tgz";
        url = "https://registry.yarnpkg.com/@pkgjs/parseargs/-/parseargs-0.11.0.tgz";
        sha512 = "+1VkjdD0QBLPodGrJUeqarH8VAIvQODIbwh9XpP5Syisf7YoQgsJKPNFoqqLQlu+VQ/tVSshMR6loPMn8U+dPg==";
      };
    }
    {
      name = "_tailwindcss_forms___forms_0.5.7.tgz";
      path = fetchurl {
        name = "_tailwindcss_forms___forms_0.5.7.tgz";
        url = "https://registry.yarnpkg.com/@tailwindcss/forms/-/forms-0.5.7.tgz";
        sha512 = "QE7X69iQI+ZXwldE+rzasvbJiyV/ju1FGHH0Qn2W3FKbuYtqp8LKcy6iSw79fVUT5/Vvf+0XgLCeYVG+UV6hOw==";
      };
    }
    {
      name = "ansi_regex___ansi_regex_5.0.1.tgz";
      path = fetchurl {
        name = "ansi_regex___ansi_regex_5.0.1.tgz";
        url = "https://registry.yarnpkg.com/ansi-regex/-/ansi-regex-5.0.1.tgz";
        sha512 = "quJQXlTSUGL2LH9SUXo8VwsY4soanhgo6LNSm84E1LBcE8s3O0wpdiRzyR9z/ZZJMlMWv37qOOb9pdJlMUEKFQ==";
      };
    }
    {
      name = "ansi_regex___ansi_regex_6.0.1.tgz";
      path = fetchurl {
        name = "ansi_regex___ansi_regex_6.0.1.tgz";
        url = "https://registry.yarnpkg.com/ansi-regex/-/ansi-regex-6.0.1.tgz";
        sha512 = "n5M855fKb2SsfMIiFFoVrABHJC8QtHwVx+mHWP3QcEqBHYienj5dHSgjbxtC0WEZXYt4wcD6zrQElDPhFuZgfA==";
      };
    }
    {
      name = "ansi_styles___ansi_styles_4.3.0.tgz";
      path = fetchurl {
        name = "ansi_styles___ansi_styles_4.3.0.tgz";
        url = "https://registry.yarnpkg.com/ansi-styles/-/ansi-styles-4.3.0.tgz";
        sha512 = "zbB9rCJAT1rbjiVDb2hqKFHNYLxgtk8NURxZ3IZwD3F6NtxbXZQCnnSi1Lkx+IDohdPlFp222wVALIheZJQSEg==";
      };
    }
    {
      name = "ansi_styles___ansi_styles_6.2.1.tgz";
      path = fetchurl {
        name = "ansi_styles___ansi_styles_6.2.1.tgz";
        url = "https://registry.yarnpkg.com/ansi-styles/-/ansi-styles-6.2.1.tgz";
        sha512 = "bN798gFfQX+viw3R7yrGWRqnrN2oRkEkUjjl4JNn4E8GxxbjtG3FbrEIIY3l8/hrwUwIeCZvi4QuOTP4MErVug==";
      };
    }
    {
      name = "any_promise___any_promise_1.3.0.tgz";
      path = fetchurl {
        name = "any_promise___any_promise_1.3.0.tgz";
        url = "https://registry.yarnpkg.com/any-promise/-/any-promise-1.3.0.tgz";
        sha512 = "7UvmKalWRt1wgjL1RrGxoSJW/0QZFIegpeGvZG9kjp8vrRu55XTHbwnqq2GpXm9uLbcuhxm3IqX9OB4MZR1b2A==";
      };
    }
    {
      name = "anymatch___anymatch_3.1.3.tgz";
      path = fetchurl {
        name = "anymatch___anymatch_3.1.3.tgz";
        url = "https://registry.yarnpkg.com/anymatch/-/anymatch-3.1.3.tgz";
        sha512 = "KMReFUr0B4t+D+OBkjR3KYqvocp2XaSzO55UcB6mgQMd3KbcE+mWTyvVV7D/zsdEbNnV6acZUutkiHQXvTr1Rw==";
      };
    }
    {
      name = "arg___arg_5.0.2.tgz";
      path = fetchurl {
        name = "arg___arg_5.0.2.tgz";
        url = "https://registry.yarnpkg.com/arg/-/arg-5.0.2.tgz";
        sha512 = "PYjyFOLKQ9y57JvQ6QLo8dAgNqswh8M1RMJYdQduT6xbWSgK36P/Z/v+p888pM69jMMfS8Xd8F6I1kQ/I9HUGg==";
      };
    }
    {
      name = "balanced_match___balanced_match_1.0.2.tgz";
      path = fetchurl {
        name = "balanced_match___balanced_match_1.0.2.tgz";
        url = "https://registry.yarnpkg.com/balanced-match/-/balanced-match-1.0.2.tgz";
        sha512 = "3oSeUO0TMV67hN1AmbXsK4yaqU7tjiHlbxRDZOpH0KW9+CeX4bRAaX0Anxt0tx2MrpRpWwQaPwIlISEJhYU5Pw==";
      };
    }
    {
      name = "binary_extensions___binary_extensions_2.3.0.tgz";
      path = fetchurl {
        name = "binary_extensions___binary_extensions_2.3.0.tgz";
        url = "https://registry.yarnpkg.com/binary-extensions/-/binary-extensions-2.3.0.tgz";
        sha512 = "Ceh+7ox5qe7LJuLHoY0feh3pHuUDHAcRUeyL2VYghZwfpkNIy/+8Ocg0a3UuSoYzavmylwuLWQOf3hl0jjMMIw==";
      };
    }
    {
      name = "brace_expansion___brace_expansion_2.0.1.tgz";
      path = fetchurl {
        name = "brace_expansion___brace_expansion_2.0.1.tgz";
        url = "https://registry.yarnpkg.com/brace-expansion/-/brace-expansion-2.0.1.tgz";
        sha512 = "XnAIvQ8eM+kC6aULx6wuQiwVsnzsi9d3WxzV3FpWTGA19F621kwdbsAcFKXgKUHZWsy+mY6iL1sHTxWEFCytDA==";
      };
    }
    {
      name = "braces___braces_3.0.3.tgz";
      path = fetchurl {
        name = "braces___braces_3.0.3.tgz";
        url = "https://registry.yarnpkg.com/braces/-/braces-3.0.3.tgz";
        sha512 = "yQbXgO/OSZVD2IsiLlro+7Hf6Q18EJrKSEsdoMzKePKXct3gvD8oLcOQdIzGupr5Fj+EDe8gO/lxc1BzfMpxvA==";
      };
    }
    {
      name = "camelcase_css___camelcase_css_2.0.1.tgz";
      path = fetchurl {
        name = "camelcase_css___camelcase_css_2.0.1.tgz";
        url = "https://registry.yarnpkg.com/camelcase-css/-/camelcase-css-2.0.1.tgz";
        sha512 = "QOSvevhslijgYwRx6Rv7zKdMF8lbRmx+uQGx2+vDc+KI/eBnsy9kit5aj23AgGu3pa4t9AgwbnXWqS+iOY+2aA==";
      };
    }
    {
      name = "chokidar___chokidar_3.6.0.tgz";
      path = fetchurl {
        name = "chokidar___chokidar_3.6.0.tgz";
        url = "https://registry.yarnpkg.com/chokidar/-/chokidar-3.6.0.tgz";
        sha512 = "7VT13fmjotKpGipCW9JEQAusEPE+Ei8nl6/g4FBAmIm0GOOLMua9NDDo/DWp0ZAxCr3cPq5ZpBqmPAQgDda2Pw==";
      };
    }
    {
      name = "color_convert___color_convert_2.0.1.tgz";
      path = fetchurl {
        name = "color_convert___color_convert_2.0.1.tgz";
        url = "https://registry.yarnpkg.com/color-convert/-/color-convert-2.0.1.tgz";
        sha512 = "RRECPsj7iu/xb5oKYcsFHSppFNnsj/52OVTRKb4zP5onXwVF3zVmmToNcOfGC+CRDpfK/U584fMg38ZHCaElKQ==";
      };
    }
    {
      name = "color_name___color_name_1.1.4.tgz";
      path = fetchurl {
        name = "color_name___color_name_1.1.4.tgz";
        url = "https://registry.yarnpkg.com/color-name/-/color-name-1.1.4.tgz";
        sha512 = "dOy+3AuW3a2wNbZHIuMZpTcgjGuLU/uBL/ubcZF9OXbDo8ff4O8yVp5Bf0efS8uEoYo5q4Fx7dY9OgQGXgAsQA==";
      };
    }
    {
      name = "commander___commander_4.1.1.tgz";
      path = fetchurl {
        name = "commander___commander_4.1.1.tgz";
        url = "https://registry.yarnpkg.com/commander/-/commander-4.1.1.tgz";
        sha512 = "NOKm8xhkzAjzFx8B2v5OAHT+u5pRQc2UCa2Vq9jYL/31o2wi9mxBA7LIFs3sV5VSC49z6pEhfbMULvShKj26WA==";
      };
    }
    {
      name = "cross_spawn___cross_spawn_7.0.3.tgz";
      path = fetchurl {
        name = "cross_spawn___cross_spawn_7.0.3.tgz";
        url = "https://registry.yarnpkg.com/cross-spawn/-/cross-spawn-7.0.3.tgz";
        sha512 = "iRDPJKUPVEND7dHPO8rkbOnPpyDygcDFtWjpeWNCgy8WP2rXcxXL8TskReQl6OrB2G7+UJrags1q15Fudc7G6w==";
      };
    }
    {
      name = "cssesc___cssesc_3.0.0.tgz";
      path = fetchurl {
        name = "cssesc___cssesc_3.0.0.tgz";
        url = "https://registry.yarnpkg.com/cssesc/-/cssesc-3.0.0.tgz";
        sha512 = "/Tb/JcjK111nNScGob5MNtsntNM1aCNUDipB/TkwZFhyDrrE47SOx/18wF2bbjgc3ZzCSKW1T5nt5EbFoAz/Vg==";
      };
    }
    {
      name = "didyoumean___didyoumean_1.2.2.tgz";
      path = fetchurl {
        name = "didyoumean___didyoumean_1.2.2.tgz";
        url = "https://registry.yarnpkg.com/didyoumean/-/didyoumean-1.2.2.tgz";
        sha512 = "gxtyfqMg7GKyhQmb056K7M3xszy/myH8w+B4RT+QXBQsvAOdc3XymqDDPHx1BgPgsdAA5SIifona89YtRATDzw==";
      };
    }
    {
      name = "dlv___dlv_1.1.3.tgz";
      path = fetchurl {
        name = "dlv___dlv_1.1.3.tgz";
        url = "https://registry.yarnpkg.com/dlv/-/dlv-1.1.3.tgz";
        sha512 = "+HlytyjlPKnIG8XuRG8WvmBP8xs8P71y+SKKS6ZXWoEgLuePxtDoUEiH7WkdePWrQ5JBpE6aoVqfZfJUQkjXwA==";
      };
    }
    {
      name = "eastasianwidth___eastasianwidth_0.2.0.tgz";
      path = fetchurl {
        name = "eastasianwidth___eastasianwidth_0.2.0.tgz";
        url = "https://registry.yarnpkg.com/eastasianwidth/-/eastasianwidth-0.2.0.tgz";
        sha512 = "I88TYZWc9XiYHRQ4/3c5rjjfgkjhLyW2luGIheGERbNQ6OY7yTybanSpDXZa8y7VUP9YmDcYa+eyq4ca7iLqWA==";
      };
    }
    {
      name = "emoji_regex___emoji_regex_8.0.0.tgz";
      path = fetchurl {
        name = "emoji_regex___emoji_regex_8.0.0.tgz";
        url = "https://registry.yarnpkg.com/emoji-regex/-/emoji-regex-8.0.0.tgz";
        sha512 = "MSjYzcWNOA0ewAHpz0MxpYFvwg6yjy1NG3xteoqz644VCo/RPgnr1/GGt+ic3iJTzQ8Eu3TdM14SawnVUmGE6A==";
      };
    }
    {
      name = "emoji_regex___emoji_regex_9.2.2.tgz";
      path = fetchurl {
        name = "emoji_regex___emoji_regex_9.2.2.tgz";
        url = "https://registry.yarnpkg.com/emoji-regex/-/emoji-regex-9.2.2.tgz";
        sha512 = "L18DaJsXSUk2+42pv8mLs5jJT2hqFkFE4j21wOmgbUqsZ2hL72NsUU785g9RXgo3s0ZNgVl42TiHp3ZtOv/Vyg==";
      };
    }
    {
      name = "esbuild___esbuild_0.23.0.tgz";
      path = fetchurl {
        name = "esbuild___esbuild_0.23.0.tgz";
        url = "https://registry.yarnpkg.com/esbuild/-/esbuild-0.23.0.tgz";
        sha512 = "1lvV17H2bMYda/WaFb2jLPeHU3zml2k4/yagNMG8Q/YtfMjCwEUZa2eXXMgZTVSL5q1n4H7sQ0X6CdJDqqeCFA==";
      };
    }
    {
      name = "fast_glob___fast_glob_3.3.2.tgz";
      path = fetchurl {
        name = "fast_glob___fast_glob_3.3.2.tgz";
        url = "https://registry.yarnpkg.com/fast-glob/-/fast-glob-3.3.2.tgz";
        sha512 = "oX2ruAFQwf/Orj8m737Y5adxDQO0LAB7/S5MnxCdTNDd4p6BsyIVsv9JQsATbTSq8KHRpLwIHbVlUNatxd+1Ow==";
      };
    }
    {
      name = "fastq___fastq_1.17.1.tgz";
      path = fetchurl {
        name = "fastq___fastq_1.17.1.tgz";
        url = "https://registry.yarnpkg.com/fastq/-/fastq-1.17.1.tgz";
        sha512 = "sRVD3lWVIXWg6By68ZN7vho9a1pQcN/WBFaAAsDDFzlJjvoGx0P8z7V1t72grFJfJhu3YPZBuu25f7Kaw2jN1w==";
      };
    }
    {
      name = "fill_range___fill_range_7.1.1.tgz";
      path = fetchurl {
        name = "fill_range___fill_range_7.1.1.tgz";
        url = "https://registry.yarnpkg.com/fill-range/-/fill-range-7.1.1.tgz";
        sha512 = "YsGpe3WHLK8ZYi4tWDg2Jy3ebRz2rXowDxnld4bkQB00cc/1Zw9AWnC0i9ztDJitivtQvaI9KaLyKrc+hBW0yg==";
      };
    }
    {
      name = "foreground_child___foreground_child_3.2.1.tgz";
      path = fetchurl {
        name = "foreground_child___foreground_child_3.2.1.tgz";
        url = "https://registry.yarnpkg.com/foreground-child/-/foreground-child-3.2.1.tgz";
        sha512 = "PXUUyLqrR2XCWICfv6ukppP96sdFwWbNEnfEMt7jNsISjMsvaLNinAHNDYyvkyU+SZG2BTSbT5NjG+vZslfGTA==";
      };
    }
    {
      name = "fsevents___fsevents_2.3.3.tgz";
      path = fetchurl {
        name = "fsevents___fsevents_2.3.3.tgz";
        url = "https://registry.yarnpkg.com/fsevents/-/fsevents-2.3.3.tgz";
        sha512 = "5xoDfX+fL7faATnagmWPpbFtwh/R77WmMMqqHGS65C3vvB0YHrgF+B1YmZ3441tMj5n63k0212XNoJwzlhffQw==";
      };
    }
    {
      name = "function_bind___function_bind_1.1.2.tgz";
      path = fetchurl {
        name = "function_bind___function_bind_1.1.2.tgz";
        url = "https://registry.yarnpkg.com/function-bind/-/function-bind-1.1.2.tgz";
        sha512 = "7XHNxH7qX9xG5mIwxkhumTox/MIRNcOgDrxWsMt2pAr23WHp6MrRlN7FBSFpCpr+oVO0F744iUgR82nJMfG2SA==";
      };
    }
    {
      name = "glob_parent___glob_parent_5.1.2.tgz";
      path = fetchurl {
        name = "glob_parent___glob_parent_5.1.2.tgz";
        url = "https://registry.yarnpkg.com/glob-parent/-/glob-parent-5.1.2.tgz";
        sha512 = "AOIgSQCepiJYwP3ARnGx+5VnTu2HBYdzbGP45eLw1vr3zB3vZLeyed1sC9hnbcOc9/SrMyM5RPQrkGz4aS9Zow==";
      };
    }
    {
      name = "glob_parent___glob_parent_6.0.2.tgz";
      path = fetchurl {
        name = "glob_parent___glob_parent_6.0.2.tgz";
        url = "https://registry.yarnpkg.com/glob-parent/-/glob-parent-6.0.2.tgz";
        sha512 = "XxwI8EOhVQgWp6iDL+3b0r86f4d6AX6zSU55HfB4ydCEuXLXc5FcYeOu+nnGftS4TEju/11rt4KJPTMgbfmv4A==";
      };
    }
    {
      name = "glob___glob_10.4.5.tgz";
      path = fetchurl {
        name = "glob___glob_10.4.5.tgz";
        url = "https://registry.yarnpkg.com/glob/-/glob-10.4.5.tgz";
        sha512 = "7Bv8RF0k6xjo7d4A/PxYLbUCfb6c+Vpd2/mB2yRDlew7Jb5hEXiCD9ibfO7wpk8i4sevK6DFny9h7EYbM3/sHg==";
      };
    }
    {
      name = "hasown___hasown_2.0.2.tgz";
      path = fetchurl {
        name = "hasown___hasown_2.0.2.tgz";
        url = "https://registry.yarnpkg.com/hasown/-/hasown-2.0.2.tgz";
        sha512 = "0hJU9SCPvmMzIBdZFqNPXWa6dqh7WdH0cII9y+CyS8rG3nL48Bclra9HmKhVVUHyPWNH5Y7xDwAB7bfgSjkUMQ==";
      };
    }
    {
      name = "is_binary_path___is_binary_path_2.1.0.tgz";
      path = fetchurl {
        name = "is_binary_path___is_binary_path_2.1.0.tgz";
        url = "https://registry.yarnpkg.com/is-binary-path/-/is-binary-path-2.1.0.tgz";
        sha512 = "ZMERYes6pDydyuGidse7OsHxtbI7WVeUEozgR/g7rd0xUimYNlvZRE/K2MgZTjWy725IfelLeVcEM97mmtRGXw==";
      };
    }
    {
      name = "is_core_module___is_core_module_2.15.0.tgz";
      path = fetchurl {
        name = "is_core_module___is_core_module_2.15.0.tgz";
        url = "https://registry.yarnpkg.com/is-core-module/-/is-core-module-2.15.0.tgz";
        sha512 = "Dd+Lb2/zvk9SKy1TGCt1wFJFo/MWBPMX5x7KcvLajWTGuomczdQX61PvY5yK6SVACwpoexWo81IfFyoKY2QnTA==";
      };
    }
    {
      name = "is_extglob___is_extglob_2.1.1.tgz";
      path = fetchurl {
        name = "is_extglob___is_extglob_2.1.1.tgz";
        url = "https://registry.yarnpkg.com/is-extglob/-/is-extglob-2.1.1.tgz";
        sha512 = "SbKbANkN603Vi4jEZv49LeVJMn4yGwsbzZworEoyEiutsN3nJYdbO36zfhGJ6QEDpOZIFkDtnq5JRxmvl3jsoQ==";
      };
    }
    {
      name = "is_fullwidth_code_point___is_fullwidth_code_point_3.0.0.tgz";
      path = fetchurl {
        name = "is_fullwidth_code_point___is_fullwidth_code_point_3.0.0.tgz";
        url = "https://registry.yarnpkg.com/is-fullwidth-code-point/-/is-fullwidth-code-point-3.0.0.tgz";
        sha512 = "zymm5+u+sCsSWyD9qNaejV3DFvhCKclKdizYaJUuHA83RLjb7nSuGnddCHGv0hk+KY7BMAlsWeK4Ueg6EV6XQg==";
      };
    }
    {
      name = "is_glob___is_glob_4.0.3.tgz";
      path = fetchurl {
        name = "is_glob___is_glob_4.0.3.tgz";
        url = "https://registry.yarnpkg.com/is-glob/-/is-glob-4.0.3.tgz";
        sha512 = "xelSayHH36ZgE7ZWhli7pW34hNbNl8Ojv5KVmkJD4hBdD3th8Tfk9vYasLM+mXWOZhFkgZfxhLSnrwRr4elSSg==";
      };
    }
    {
      name = "is_number___is_number_7.0.0.tgz";
      path = fetchurl {
        name = "is_number___is_number_7.0.0.tgz";
        url = "https://registry.yarnpkg.com/is-number/-/is-number-7.0.0.tgz";
        sha512 = "41Cifkg6e8TylSpdtTpeLVMqvSBEVzTttHvERD741+pnZ8ANv0004MRL43QKPDlK9cGvNp6NZWZUBlbGXYxxng==";
      };
    }
    {
      name = "isexe___isexe_2.0.0.tgz";
      path = fetchurl {
        name = "isexe___isexe_2.0.0.tgz";
        url = "https://registry.yarnpkg.com/isexe/-/isexe-2.0.0.tgz";
        sha512 = "RHxMLp9lnKHGHRng9QFhRCMbYAcVpn69smSGcq3f36xjgVVWThj4qqLbTLlq7Ssj8B+fIQ1EuCEGI2lKsyQeIw==";
      };
    }
    {
      name = "jackspeak___jackspeak_3.4.3.tgz";
      path = fetchurl {
        name = "jackspeak___jackspeak_3.4.3.tgz";
        url = "https://registry.yarnpkg.com/jackspeak/-/jackspeak-3.4.3.tgz";
        sha512 = "OGlZQpz2yfahA/Rd1Y8Cd9SIEsqvXkLVoSw/cgwhnhFMDbsQFeZYoJJ7bIZBS9BcamUW96asq/npPWugM+RQBw==";
      };
    }
    {
      name = "jiti___jiti_1.21.6.tgz";
      path = fetchurl {
        name = "jiti___jiti_1.21.6.tgz";
        url = "https://registry.yarnpkg.com/jiti/-/jiti-1.21.6.tgz";
        sha512 = "2yTgeWTWzMWkHu6Jp9NKgePDaYHbntiwvYuuJLbbN9vl7DC9DvXKOB2BC3ZZ92D3cvV/aflH0osDfwpHepQ53w==";
      };
    }
    {
      name = "lilconfig___lilconfig_2.1.0.tgz";
      path = fetchurl {
        name = "lilconfig___lilconfig_2.1.0.tgz";
        url = "https://registry.yarnpkg.com/lilconfig/-/lilconfig-2.1.0.tgz";
        sha512 = "utWOt/GHzuUxnLKxB6dk81RoOeoNeHgbrXiuGk4yyF5qlRz+iIVWu56E2fqGHFrXz0QNUhLB/8nKqvRH66JKGQ==";
      };
    }
    {
      name = "lilconfig___lilconfig_3.1.2.tgz";
      path = fetchurl {
        name = "lilconfig___lilconfig_3.1.2.tgz";
        url = "https://registry.yarnpkg.com/lilconfig/-/lilconfig-3.1.2.tgz";
        sha512 = "eop+wDAvpItUys0FWkHIKeC9ybYrTGbU41U5K7+bttZZeohvnY7M9dZ5kB21GNWiFT2q1OoPTvncPCgSOVO5ow==";
      };
    }
    {
      name = "lines_and_columns___lines_and_columns_1.2.4.tgz";
      path = fetchurl {
        name = "lines_and_columns___lines_and_columns_1.2.4.tgz";
        url = "https://registry.yarnpkg.com/lines-and-columns/-/lines-and-columns-1.2.4.tgz";
        sha512 = "7ylylesZQ/PV29jhEDl3Ufjo6ZX7gCqJr5F7PKrqc93v7fzSymt1BpwEU8nAUXs8qzzvqhbjhK5QZg6Mt/HkBg==";
      };
    }
    {
      name = "lru_cache___lru_cache_10.4.3.tgz";
      path = fetchurl {
        name = "lru_cache___lru_cache_10.4.3.tgz";
        url = "https://registry.yarnpkg.com/lru-cache/-/lru-cache-10.4.3.tgz";
        sha512 = "JNAzZcXrCt42VGLuYz0zfAzDfAvJWW6AfYlDBQyDV5DClI2m5sAmK+OIO7s59XfsRsWHp02jAJrRadPRGTt6SQ==";
      };
    }
    {
      name = "merge2___merge2_1.4.1.tgz";
      path = fetchurl {
        name = "merge2___merge2_1.4.1.tgz";
        url = "https://registry.yarnpkg.com/merge2/-/merge2-1.4.1.tgz";
        sha512 = "8q7VEgMJW4J8tcfVPy8g09NcQwZdbwFEqhe/WZkoIzjn/3TGDwtOCYtXGxA3O8tPzpczCCDgv+P2P5y00ZJOOg==";
      };
    }
    {
      name = "micromatch___micromatch_4.0.7.tgz";
      path = fetchurl {
        name = "micromatch___micromatch_4.0.7.tgz";
        url = "https://registry.yarnpkg.com/micromatch/-/micromatch-4.0.7.tgz";
        sha512 = "LPP/3KorzCwBxfeUuZmaR6bG2kdeHSbe0P2tY3FLRU4vYrjYz5hI4QZwV0njUx3jeuKe67YukQ1LSPZBKDqO/Q==";
      };
    }
    {
      name = "mini_svg_data_uri___mini_svg_data_uri_1.4.4.tgz";
      path = fetchurl {
        name = "mini_svg_data_uri___mini_svg_data_uri_1.4.4.tgz";
        url = "https://registry.yarnpkg.com/mini-svg-data-uri/-/mini-svg-data-uri-1.4.4.tgz";
        sha512 = "r9deDe9p5FJUPZAk3A59wGH7Ii9YrjjWw0jmw/liSbHl2CHiyXj6FcDXDu2K3TjVAXqiJdaw3xxwlZZr9E6nHg==";
      };
    }
    {
      name = "minimatch___minimatch_9.0.5.tgz";
      path = fetchurl {
        name = "minimatch___minimatch_9.0.5.tgz";
        url = "https://registry.yarnpkg.com/minimatch/-/minimatch-9.0.5.tgz";
        sha512 = "G6T0ZX48xgozx7587koeX9Ys2NYy6Gmv//P89sEte9V9whIapMNF4idKxnW2QtCcLiTWlb/wfCabAtAFWhhBow==";
      };
    }
    {
      name = "minipass___minipass_7.1.2.tgz";
      path = fetchurl {
        name = "minipass___minipass_7.1.2.tgz";
        url = "https://registry.yarnpkg.com/minipass/-/minipass-7.1.2.tgz";
        sha512 = "qOOzS1cBTWYF4BH8fVePDBOO9iptMnGUEZwNc/cMWnTV2nVLZ7VoNWEPHkYczZA0pdoA7dl6e7FL659nX9S2aw==";
      };
    }
    {
      name = "mz___mz_2.7.0.tgz";
      path = fetchurl {
        name = "mz___mz_2.7.0.tgz";
        url = "https://registry.yarnpkg.com/mz/-/mz-2.7.0.tgz";
        sha512 = "z81GNO7nnYMEhrGh9LeymoE4+Yr0Wn5McHIZMK5cfQCl+NDX08sCZgUc9/6MHni9IWuFLm1Z3HTCXu2z9fN62Q==";
      };
    }
    {
      name = "nanoid___nanoid_3.3.7.tgz";
      path = fetchurl {
        name = "nanoid___nanoid_3.3.7.tgz";
        url = "https://registry.yarnpkg.com/nanoid/-/nanoid-3.3.7.tgz";
        sha512 = "eSRppjcPIatRIMC1U6UngP8XFcz8MQWGQdt1MTBQ7NaAmvXDfvNxbvWV3x2y6CdEUciCSsDHDQZbhYaB8QEo2g==";
      };
    }
    {
      name = "normalize_path___normalize_path_3.0.0.tgz";
      path = fetchurl {
        name = "normalize_path___normalize_path_3.0.0.tgz";
        url = "https://registry.yarnpkg.com/normalize-path/-/normalize-path-3.0.0.tgz";
        sha512 = "6eZs5Ls3WtCisHWp9S2GUy8dqkpGi4BVSz3GaqiE6ezub0512ESztXUwUB6C6IKbQkY2Pnb/mD4WYojCRwcwLA==";
      };
    }
    {
      name = "object_assign___object_assign_4.1.1.tgz";
      path = fetchurl {
        name = "object_assign___object_assign_4.1.1.tgz";
        url = "https://registry.yarnpkg.com/object-assign/-/object-assign-4.1.1.tgz";
        sha512 = "rJgTQnkUnH1sFw8yT6VSU3zD3sWmu6sZhIseY8VX+GRu3P6F7Fu+JNDoXfklElbLJSnc3FUQHVe4cU5hj+BcUg==";
      };
    }
    {
      name = "object_hash___object_hash_3.0.0.tgz";
      path = fetchurl {
        name = "object_hash___object_hash_3.0.0.tgz";
        url = "https://registry.yarnpkg.com/object-hash/-/object-hash-3.0.0.tgz";
        sha512 = "RSn9F68PjH9HqtltsSnqYC1XXoWe9Bju5+213R98cNGttag9q9yAOTzdbsqvIa7aNm5WffBZFpWYr2aWrklWAw==";
      };
    }
    {
      name = "package_json_from_dist___package_json_from_dist_1.0.0.tgz";
      path = fetchurl {
        name = "package_json_from_dist___package_json_from_dist_1.0.0.tgz";
        url = "https://registry.yarnpkg.com/package-json-from-dist/-/package-json-from-dist-1.0.0.tgz";
        sha512 = "dATvCeZN/8wQsGywez1mzHtTlP22H8OEfPrVMLNr4/eGa+ijtLn/6M5f0dY8UKNrC2O9UCU6SSoG3qRKnt7STw==";
      };
    }
    {
      name = "path_key___path_key_3.1.1.tgz";
      path = fetchurl {
        name = "path_key___path_key_3.1.1.tgz";
        url = "https://registry.yarnpkg.com/path-key/-/path-key-3.1.1.tgz";
        sha512 = "ojmeN0qd+y0jszEtoY48r0Peq5dwMEkIlCOu6Q5f41lfkswXuKtYrhgoTpLnyIcHm24Uhqx+5Tqm2InSwLhE6Q==";
      };
    }
    {
      name = "path_parse___path_parse_1.0.7.tgz";
      path = fetchurl {
        name = "path_parse___path_parse_1.0.7.tgz";
        url = "https://registry.yarnpkg.com/path-parse/-/path-parse-1.0.7.tgz";
        sha512 = "LDJzPVEEEPR+y48z93A0Ed0yXb8pAByGWo/k5YYdYgpY2/2EsOsksJrq7lOHxryrVOn1ejG6oAp8ahvOIQD8sw==";
      };
    }
    {
      name = "path_scurry___path_scurry_1.11.1.tgz";
      path = fetchurl {
        name = "path_scurry___path_scurry_1.11.1.tgz";
        url = "https://registry.yarnpkg.com/path-scurry/-/path-scurry-1.11.1.tgz";
        sha512 = "Xa4Nw17FS9ApQFJ9umLiJS4orGjm7ZzwUrwamcGQuHSzDyth9boKDaycYdDcZDuqYATXw4HFXgaqWTctW/v1HA==";
      };
    }

    {
      name = "picocolors___picocolors_1.0.1.tgz";
      path = fetchurl {
        name = "picocolors___picocolors_1.0.1.tgz";
        url = "https://registry.yarnpkg.com/picocolors/-/picocolors-1.0.1.tgz";
        sha512 = "anP1Z8qwhkbmu7MFP5iTt+wQKXgwzf7zTyGlcdzabySa9vd0Xt392U0rVmz9poOaBj0uHJKyyo9/upk0HrEQew==";
      };
    }
    {
      name = "picomatch___picomatch_2.3.1.tgz";
      path = fetchurl {
        name = "picomatch___picomatch_2.3.1.tgz";
        url = "https://registry.yarnpkg.com/picomatch/-/picomatch-2.3.1.tgz";
        sha512 = "JU3teHTNjmE2VCGFzuY8EXzCDVwEqB2a8fsIvwaStHhAWJEeVd1o1QD80CU6+ZdEXXSLbSsuLwJjkCBWqRQUVA==";
      };
    }
    {
      name = "pify___pify_2.3.0.tgz";
      path = fetchurl {
        name = "pify___pify_2.3.0.tgz";
        url = "https://registry.yarnpkg.com/pify/-/pify-2.3.0.tgz";
        sha512 = "udgsAY+fTnvv7kI7aaxbqwWNb0AHiB0qBO89PZKPkoTmGOgdbrHDKD+0B2X4uTfJ/FT1R09r9gTsjUjNJotuog==";
      };
    }
    {
      name = "pirates___pirates_4.0.6.tgz";
      path = fetchurl {
        name = "pirates___pirates_4.0.6.tgz";
        url = "https://registry.yarnpkg.com/pirates/-/pirates-4.0.6.tgz";
        sha512 = "saLsH7WeYYPiD25LDuLRRY/i+6HaPYr6G1OUlN39otzkSTxKnubR9RTxS3/Kk50s1g2JTgFwWQDQyplC5/SHZg==";
      };
    }
    {
      name = "postcss_import___postcss_import_15.1.0.tgz";
      path = fetchurl {
        name = "postcss_import___postcss_import_15.1.0.tgz";
        url = "https://registry.yarnpkg.com/postcss-import/-/postcss-import-15.1.0.tgz";
        sha512 = "hpr+J05B2FVYUAXHeK1YyI267J/dDDhMU6B6civm8hSY1jYJnBXxzKDKDswzJmtLHryrjhnDjqqp/49t8FALew==";
      };
    }
    {
      name = "postcss_js___postcss_js_4.0.1.tgz";
      path = fetchurl {
        name = "postcss_js___postcss_js_4.0.1.tgz";
        url = "https://registry.yarnpkg.com/postcss-js/-/postcss-js-4.0.1.tgz";
        sha512 = "dDLF8pEO191hJMtlHFPRa8xsizHaM82MLfNkUHdUtVEV3tgTp5oj+8qbEqYM57SLfc74KSbw//4SeJma2LRVIw==";
      };
    }
    {
      name = "postcss_load_config___postcss_load_config_4.0.2.tgz";
      path = fetchurl {
        name = "postcss_load_config___postcss_load_config_4.0.2.tgz";
        url = "https://registry.yarnpkg.com/postcss-load-config/-/postcss-load-config-4.0.2.tgz";
        sha512 = "bSVhyJGL00wMVoPUzAVAnbEoWyqRxkjv64tUl427SKnPrENtq6hJwUojroMz2VB+Q1edmi4IfrAPpami5VVgMQ==";
      };
    }
    {
      name = "postcss_nested___postcss_nested_6.2.0.tgz";
      path = fetchurl {
        name = "postcss_nested___postcss_nested_6.2.0.tgz";
        url = "https://registry.yarnpkg.com/postcss-nested/-/postcss-nested-6.2.0.tgz";
        sha512 = "HQbt28KulC5AJzG+cZtj9kvKB93CFCdLvog1WFLf1D+xmMvPGlBstkpTEZfK5+AN9hfJocyBFCNiqyS48bpgzQ==";
      };
    }
    {
      name = "postcss_selector_parser___postcss_selector_parser_6.1.1.tgz";
      path = fetchurl {
        name = "postcss_selector_parser___postcss_selector_parser_6.1.1.tgz";
        url = "https://registry.yarnpkg.com/postcss-selector-parser/-/postcss-selector-parser-6.1.1.tgz";
        sha512 = "b4dlw/9V8A71rLIDsSwVmak9z2DuBUB7CA1/wSdelNEzqsjoSPeADTWNO09lpH49Diy3/JIZ2bSPB1dI3LJCHg==";
      };
    }
    {
      name = "postcss_value_parser___postcss_value_parser_4.2.0.tgz";
      path = fetchurl {
        name = "postcss_value_parser___postcss_value_parser_4.2.0.tgz";
        url = "https://registry.yarnpkg.com/postcss-value-parser/-/postcss-value-parser-4.2.0.tgz";
        sha512 = "1NNCs6uurfkVbeXG4S8JFT9t19m45ICnif8zWLd5oPSZ50QnwMfK+H3jv408d4jw/7Bttv5axS5IiHoLaVNHeQ==";
      };
    }
    {
      name = "postcss___postcss_8.4.39.tgz";
      path = fetchurl {
        name = "postcss___postcss_8.4.39.tgz";
        url = "https://registry.yarnpkg.com/postcss/-/postcss-8.4.39.tgz";
        sha512 = "0vzE+lAiG7hZl1/9I8yzKLx3aR9Xbof3fBHKunvMfOCYAtMhrsnccJY2iTURb9EZd5+pLuiNV9/c/GZJOHsgIw==";
      };
    }
    {
      name = "prettier___prettier_3.3.3.tgz";
      path = fetchurl {
        name = "prettier___prettier_3.3.3.tgz";
        url = "https://registry.yarnpkg.com/prettier/-/prettier-3.3.3.tgz";
        sha512 = "i2tDNA0O5IrMO757lfrdQZCc2jPNDVntV0m/+4whiDfWaTKfMNgR7Qz0NAeGz/nRqF4m5/6CLzbP4/liHt12Ew==";
      };
    }
    {
      name = "queue_microtask___queue_microtask_1.2.3.tgz";
      path = fetchurl {
        name = "queue_microtask___queue_microtask_1.2.3.tgz";
        url = "https://registry.yarnpkg.com/queue-microtask/-/queue-microtask-1.2.3.tgz";
        sha512 = "NuaNSa6flKT5JaSYQzJok04JzTL1CA6aGhv5rfLW3PgqA+M2ChpZQnAC8h8i4ZFkBS8X5RqkDBHA7r4hej3K9A==";
      };
    }
    {
      name = "read_cache___read_cache_1.0.0.tgz";
      path = fetchurl {
        name = "read_cache___read_cache_1.0.0.tgz";
        url = "https://registry.yarnpkg.com/read-cache/-/read-cache-1.0.0.tgz";
        sha512 = "Owdv/Ft7IjOgm/i0xvNDZ1LrRANRfew4b2prF3OWMQLxLfu3bS8FVhCsrSCMK4lR56Y9ya+AThoTpDCTxCmpRA==";
      };
    }
    {
      name = "readdirp___readdirp_3.6.0.tgz";
      path = fetchurl {
        name = "readdirp___readdirp_3.6.0.tgz";
        url = "https://registry.yarnpkg.com/readdirp/-/readdirp-3.6.0.tgz";
        sha512 = "hOS089on8RduqdbhvQ5Z37A0ESjsqz6qnRcffsMU3495FuTdqSm+7bhJ29JvIOsBDEEnan5DPu9t3To9VRlMzA==";
      };
    }
    {
      name = "resolve___resolve_1.22.8.tgz";
      path = fetchurl {
        name = "resolve___resolve_1.22.8.tgz";
        url = "https://registry.yarnpkg.com/resolve/-/resolve-1.22.8.tgz";
        sha512 = "oKWePCxqpd6FlLvGV1VU0x7bkPmmCNolxzjMf4NczoDnQcIWrAF+cPtZn5i6n+RfD2d9i0tzpKnG6Yk168yIyw==";
      };
    }
    {
      name = "reusify___reusify_1.0.4.tgz";
      path = fetchurl {
        name = "reusify___reusify_1.0.4.tgz";
        url = "https://registry.yarnpkg.com/reusify/-/reusify-1.0.4.tgz";
        sha512 = "U9nH88a3fc/ekCF1l0/UP1IosiuIjyTh7hBvXVMHYgVcfGvt897Xguj2UOLDeI5BG2m7/uwyaLVT6fbtCwTyzw==";
      };
    }
    {
      name = "run_parallel___run_parallel_1.2.0.tgz";
      path = fetchurl {
        name = "run_parallel___run_parallel_1.2.0.tgz";
        url = "https://registry.yarnpkg.com/run-parallel/-/run-parallel-1.2.0.tgz";
        sha512 = "5l4VyZR86LZ/lDxZTR6jqL8AFE2S0IFLMP26AbjsLVADxHdhB/c0GUsH+y39UfCi3dzz8OlQuPmnaJOMoDHQBA==";
      };
    }
    {
      name = "shebang_command___shebang_command_2.0.0.tgz";
      path = fetchurl {
        name = "shebang_command___shebang_command_2.0.0.tgz";
        url = "https://registry.yarnpkg.com/shebang-command/-/shebang-command-2.0.0.tgz";
        sha512 = "kHxr2zZpYtdmrN1qDjrrX/Z1rR1kG8Dx+gkpK1G4eXmvXswmcE1hTWBWYUzlraYw1/yZp6YuDY77YtvbN0dmDA==";
      };
    }
    {
      name = "shebang_regex___shebang_regex_3.0.0.tgz";
      path = fetchurl {
        name = "shebang_regex___shebang_regex_3.0.0.tgz";
        url = "https://registry.yarnpkg.com/shebang-regex/-/shebang-regex-3.0.0.tgz";
        sha512 = "7++dFhtcx3353uBaq8DDR4NuxBetBzC7ZQOhmTQInHEd6bSrXdiEyzCvG07Z44UYdLShWUyXt5M/yhz8ekcb1A==";
      };
    }
    {
      name = "signal_exit___signal_exit_4.1.0.tgz";
      path = fetchurl {
        name = "signal_exit___signal_exit_4.1.0.tgz";
        url = "https://registry.yarnpkg.com/signal-exit/-/signal-exit-4.1.0.tgz";
        sha512 = "bzyZ1e88w9O1iNJbKnOlvYTrWPDl46O1bG0D3XInv+9tkPrxrN8jUUTiFlDkkmKWgn1M6CfIA13SuGqOa9Korw==";
      };
    }
    {
      name = "source_map_js___source_map_js_1.2.0.tgz";
      path = fetchurl {
        name = "source_map_js___source_map_js_1.2.0.tgz";
        url = "https://registry.yarnpkg.com/source-map-js/-/source-map-js-1.2.0.tgz";
        sha512 = "itJW8lvSA0TXEphiRoawsCksnlf8SyvmFzIhltqAHluXd88pkCd+cXJVHTDwdCr0IzwptSm035IHQktUu1QUMg==";
      };
    }
    {
      name = "string_width___string_width_4.2.3.tgz";
      path = fetchurl {
        name = "string_width___string_width_4.2.3.tgz";
        url = "https://registry.yarnpkg.com/string-width/-/string-width-4.2.3.tgz";
        sha512 = "wKyQRQpjJ0sIp62ErSZdGsjMJWsap5oRNihHhu6G7JVO/9jIB6UyevL+tXuOqrng8j/cxKTWyWUwvSTriiZz/g==";
      };
    }
    {
      name = "string_width___string_width_5.1.2.tgz";
      path = fetchurl {
        name = "string_width___string_width_5.1.2.tgz";
        url = "https://registry.yarnpkg.com/string-width/-/string-width-5.1.2.tgz";
        sha512 = "HnLOCR3vjcY8beoNLtcjZ5/nxn2afmME6lhrDrebokqMap+XbeW8n9TXpPDOqdGK5qcI3oT0GKTW6wC7EMiVqA==";
      };
    }
    {
      name = "strip_ansi___strip_ansi_6.0.1.tgz";
      path = fetchurl {
        name = "strip_ansi___strip_ansi_6.0.1.tgz";
        url = "https://registry.yarnpkg.com/strip-ansi/-/strip-ansi-6.0.1.tgz";
        sha512 = "Y38VPSHcqkFrCpFnQ9vuSXmquuv5oXOKpGeT6aGrr3o3Gc9AlVa6JBfUSOCnbxGGZF+/0ooI7KrPuUSztUdU5A==";
      };
    }
    {
      name = "strip_ansi___strip_ansi_7.1.0.tgz";
      path = fetchurl {
        name = "strip_ansi___strip_ansi_7.1.0.tgz";
        url = "https://registry.yarnpkg.com/strip-ansi/-/strip-ansi-7.1.0.tgz";
        sha512 = "iq6eVVI64nQQTRYq2KtEg2d2uU7LElhTJwsH4YzIHZshxlgZms/wIc4VoDQTlG/IvVIrBKG06CrZnp0qv7hkcQ==";
      };
    }
    {
      name = "sucrase___sucrase_3.35.0.tgz";
      path = fetchurl {
        name = "sucrase___sucrase_3.35.0.tgz";
        url = "https://registry.yarnpkg.com/sucrase/-/sucrase-3.35.0.tgz";
        sha512 = "8EbVDiu9iN/nESwxeSxDKe0dunta1GOlHufmSSXxMD2z2/tMZpDMpvXQGsc+ajGo8y2uYUmixaSRUc/QPoQ0GA==";
      };
    }
    {
      name = "supports_preserve_symlinks_flag___supports_preserve_symlinks_flag_1.0.0.tgz";
      path = fetchurl {
        name = "supports_preserve_symlinks_flag___supports_preserve_symlinks_flag_1.0.0.tgz";
        url = "https://registry.yarnpkg.com/supports-preserve-symlinks-flag/-/supports-preserve-symlinks-flag-1.0.0.tgz";
        sha512 = "ot0WnXS9fgdkgIcePe6RHNk1WA8+muPa6cSjeR3V8K27q9BB1rTE3R1p7Hv0z1ZyAc8s6Vvv8DIyWf681MAt0w==";
      };
    }
    {
      name = "tailwindcss___tailwindcss_3.4.6.tgz";
      path = fetchurl {
        name = "tailwindcss___tailwindcss_3.4.6.tgz";
        url = "https://registry.yarnpkg.com/tailwindcss/-/tailwindcss-3.4.6.tgz";
        sha512 = "1uRHzPB+Vzu57ocybfZ4jh5Q3SdlH7XW23J5sQoM9LhE9eIOlzxer/3XPSsycvih3rboRsvt0QCmzSrqyOYUIA==";
      };
    }
    {
      name = "thenify_all___thenify_all_1.6.0.tgz";
      path = fetchurl {
        name = "thenify_all___thenify_all_1.6.0.tgz";
        url = "https://registry.yarnpkg.com/thenify-all/-/thenify-all-1.6.0.tgz";
        sha512 = "RNxQH/qI8/t3thXJDwcstUO4zeqo64+Uy/+sNVRBx4Xn2OX+OZ9oP+iJnNFqplFra2ZUVeKCSa2oVWi3T4uVmA==";
      };
    }
    {
      name = "thenify___thenify_3.3.1.tgz";
      path = fetchurl {
        name = "thenify___thenify_3.3.1.tgz";
        url = "https://registry.yarnpkg.com/thenify/-/thenify-3.3.1.tgz";
        sha512 = "RVZSIV5IG10Hk3enotrhvz0T9em6cyHBLkH/YAZuKqd8hRkKhSfCGIcP2KUY0EPxndzANBmNllzWPwak+bheSw==";
      };
    }
    {
      name = "to_regex_range___to_regex_range_5.0.1.tgz";
      path = fetchurl {
        name = "to_regex_range___to_regex_range_5.0.1.tgz";
        url = "https://registry.yarnpkg.com/to-regex-range/-/to-regex-range-5.0.1.tgz";
        sha512 = "65P7iz6X5yEr1cwcgvQxbbIw7Uk3gOy5dIdtZ4rDveLqhrdJP+Li/Hx6tyK0NEb+2GCyneCMJiGqrADCSNk8sQ==";
      };
    }
    {
      name = "topbar___topbar_3.0.0.tgz";
      path = fetchurl {
        name = "topbar___topbar_3.0.0.tgz";
        url = "https://registry.yarnpkg.com/topbar/-/topbar-3.0.0.tgz";
        sha512 = "mhczD7KfYi1anfoMPKRdl0wPSWiYc0YOK4KyycYs3EaNT15pVVNDG5CtfgZcEBWIPJEdfR7r8K4hTXDD2ECBVQ==";
      };
    }
    {
      name = "ts_interface_checker___ts_interface_checker_0.1.13.tgz";
      path = fetchurl {
        name = "ts_interface_checker___ts_interface_checker_0.1.13.tgz";
        url = "https://registry.yarnpkg.com/ts-interface-checker/-/ts-interface-checker-0.1.13.tgz";
        sha512 = "Y/arvbn+rrz3JCKl9C4kVNfTfSm2/mEp5FSz5EsZSANGPSlQrpRI5M4PKF+mJnE52jOO90PnPSc3Ur3bTQw0gA==";
      };
    }
    {
      name = "util_deprecate___util_deprecate_1.0.2.tgz";
      path = fetchurl {
        name = "util_deprecate___util_deprecate_1.0.2.tgz";
        url = "https://registry.yarnpkg.com/util-deprecate/-/util-deprecate-1.0.2.tgz";
        sha512 = "EPD5q1uXyFxJpCrLnCc1nHnq3gOa6DZBocAIiI2TaSCA7VCJ1UJDMagCzIkXNsUYfD1daK//LTEQ8xiIbrHtcw==";
      };
    }
    {
      name = "which___which_2.0.2.tgz";
      path = fetchurl {
        name = "which___which_2.0.2.tgz";
        url = "https://registry.yarnpkg.com/which/-/which-2.0.2.tgz";
        sha512 = "BLI3Tl1TW3Pvl70l3yq3Y64i+awpwXqsGBYWkkqMtnbXgrMD+yj7rhW0kuEDxzJaYXGjEW5ogapKNMEKNMjibA==";
      };
    }
    {
      name = "wrap_ansi___wrap_ansi_7.0.0.tgz";
      path = fetchurl {
        name = "wrap_ansi___wrap_ansi_7.0.0.tgz";
        url = "https://registry.yarnpkg.com/wrap-ansi/-/wrap-ansi-7.0.0.tgz";
        sha512 = "YVGIj2kamLSTxw6NsZjoBxfSwsn0ycdesmc4p+Q21c5zPuZ1pl+NfxVdxPtdHvmNVOQ6XSYG4AUtyt/Fi7D16Q==";
      };
    }
    {
      name = "wrap_ansi___wrap_ansi_8.1.0.tgz";
      path = fetchurl {
        name = "wrap_ansi___wrap_ansi_8.1.0.tgz";
        url = "https://registry.yarnpkg.com/wrap-ansi/-/wrap-ansi-8.1.0.tgz";
        sha512 = "si7QWI6zUMq56bESFvagtmzMdGOtoxfR+Sez11Mobfc7tm+VkUckk9bW2UeffTGVUbOksxmSw0AA2gs8g71NCQ==";
      };
    }
    {
      name = "yaml___yaml_2.4.5.tgz";
      path = fetchurl {
        name = "yaml___yaml_2.4.5.tgz";
        url = "https://registry.yarnpkg.com/yaml/-/yaml-2.4.5.tgz";
        sha512 = "aBx2bnqDzVOyNKfsysjA2ms5ZlnjSAW2eG3/L5G/CSujfjLJTJsEw1bGw8kCf04KodQWk1pxlGnZ56CRxiawmg==";
      };
    }
  ];
}

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
      name = "_esbuild_aix_ppc64___aix_ppc64_0.25.1.tgz";
      path = fetchurl {
        name = "_esbuild_aix_ppc64___aix_ppc64_0.25.1.tgz";
        url = "https://registry.yarnpkg.com/@esbuild/aix-ppc64/-/aix-ppc64-0.25.1.tgz";
        sha512 = "kfYGy8IdzTGy+z0vFGvExZtxkFlA4zAxgKEahG9KE1ScBjpQnFsNOX8KTU5ojNru5ed5CVoJYXFtoxaq5nFbjQ==";
      };
    }
    {
      name = "_esbuild_android_arm64___android_arm64_0.25.1.tgz";
      path = fetchurl {
        name = "_esbuild_android_arm64___android_arm64_0.25.1.tgz";
        url = "https://registry.yarnpkg.com/@esbuild/android-arm64/-/android-arm64-0.25.1.tgz";
        sha512 = "50tM0zCJW5kGqgG7fQ7IHvQOcAn9TKiVRuQ/lN0xR+T2lzEFvAi1ZcS8DiksFcEpf1t/GYOeOfCAgDHFpkiSmA==";
      };
    }
    {
      name = "_esbuild_android_arm___android_arm_0.25.1.tgz";
      path = fetchurl {
        name = "_esbuild_android_arm___android_arm_0.25.1.tgz";
        url = "https://registry.yarnpkg.com/@esbuild/android-arm/-/android-arm-0.25.1.tgz";
        sha512 = "dp+MshLYux6j/JjdqVLnMglQlFu+MuVeNrmT5nk6q07wNhCdSnB7QZj+7G8VMUGh1q+vj2Bq8kRsuyA00I/k+Q==";
      };
    }
    {
      name = "_esbuild_android_x64___android_x64_0.25.1.tgz";
      path = fetchurl {
        name = "_esbuild_android_x64___android_x64_0.25.1.tgz";
        url = "https://registry.yarnpkg.com/@esbuild/android-x64/-/android-x64-0.25.1.tgz";
        sha512 = "GCj6WfUtNldqUzYkN/ITtlhwQqGWu9S45vUXs7EIYf+7rCiiqH9bCloatO9VhxsL0Pji+PF4Lz2XXCES+Q8hDw==";
      };
    }
    {
      name = "_esbuild_darwin_arm64___darwin_arm64_0.25.1.tgz";
      path = fetchurl {
        name = "_esbuild_darwin_arm64___darwin_arm64_0.25.1.tgz";
        url = "https://registry.yarnpkg.com/@esbuild/darwin-arm64/-/darwin-arm64-0.25.1.tgz";
        sha512 = "5hEZKPf+nQjYoSr/elb62U19/l1mZDdqidGfmFutVUjjUZrOazAtwK+Kr+3y0C/oeJfLlxo9fXb1w7L+P7E4FQ==";
      };
    }
    {
      name = "_esbuild_darwin_x64___darwin_x64_0.25.1.tgz";
      path = fetchurl {
        name = "_esbuild_darwin_x64___darwin_x64_0.25.1.tgz";
        url = "https://registry.yarnpkg.com/@esbuild/darwin-x64/-/darwin-x64-0.25.1.tgz";
        sha512 = "hxVnwL2Dqs3fM1IWq8Iezh0cX7ZGdVhbTfnOy5uURtao5OIVCEyj9xIzemDi7sRvKsuSdtCAhMKarxqtlyVyfA==";
      };
    }
    {
      name = "_esbuild_freebsd_arm64___freebsd_arm64_0.25.1.tgz";
      path = fetchurl {
        name = "_esbuild_freebsd_arm64___freebsd_arm64_0.25.1.tgz";
        url = "https://registry.yarnpkg.com/@esbuild/freebsd-arm64/-/freebsd-arm64-0.25.1.tgz";
        sha512 = "1MrCZs0fZa2g8E+FUo2ipw6jw5qqQiH+tERoS5fAfKnRx6NXH31tXBKI3VpmLijLH6yriMZsxJtaXUyFt/8Y4A==";
      };
    }
    {
      name = "_esbuild_freebsd_x64___freebsd_x64_0.25.1.tgz";
      path = fetchurl {
        name = "_esbuild_freebsd_x64___freebsd_x64_0.25.1.tgz";
        url = "https://registry.yarnpkg.com/@esbuild/freebsd-x64/-/freebsd-x64-0.25.1.tgz";
        sha512 = "0IZWLiTyz7nm0xuIs0q1Y3QWJC52R8aSXxe40VUxm6BB1RNmkODtW6LHvWRrGiICulcX7ZvyH6h5fqdLu4gkww==";
      };
    }
    {
      name = "_esbuild_linux_arm64___linux_arm64_0.25.1.tgz";
      path = fetchurl {
        name = "_esbuild_linux_arm64___linux_arm64_0.25.1.tgz";
        url = "https://registry.yarnpkg.com/@esbuild/linux-arm64/-/linux-arm64-0.25.1.tgz";
        sha512 = "jaN3dHi0/DDPelk0nLcXRm1q7DNJpjXy7yWaWvbfkPvI+7XNSc/lDOnCLN7gzsyzgu6qSAmgSvP9oXAhP973uQ==";
      };
    }
    {
      name = "_esbuild_linux_arm___linux_arm_0.25.1.tgz";
      path = fetchurl {
        name = "_esbuild_linux_arm___linux_arm_0.25.1.tgz";
        url = "https://registry.yarnpkg.com/@esbuild/linux-arm/-/linux-arm-0.25.1.tgz";
        sha512 = "NdKOhS4u7JhDKw9G3cY6sWqFcnLITn6SqivVArbzIaf3cemShqfLGHYMx8Xlm/lBit3/5d7kXvriTUGa5YViuQ==";
      };
    }
    {
      name = "_esbuild_linux_ia32___linux_ia32_0.25.1.tgz";
      path = fetchurl {
        name = "_esbuild_linux_ia32___linux_ia32_0.25.1.tgz";
        url = "https://registry.yarnpkg.com/@esbuild/linux-ia32/-/linux-ia32-0.25.1.tgz";
        sha512 = "OJykPaF4v8JidKNGz8c/q1lBO44sQNUQtq1KktJXdBLn1hPod5rE/Hko5ugKKZd+D2+o1a9MFGUEIUwO2YfgkQ==";
      };
    }
    {
      name = "_esbuild_linux_loong64___linux_loong64_0.25.1.tgz";
      path = fetchurl {
        name = "_esbuild_linux_loong64___linux_loong64_0.25.1.tgz";
        url = "https://registry.yarnpkg.com/@esbuild/linux-loong64/-/linux-loong64-0.25.1.tgz";
        sha512 = "nGfornQj4dzcq5Vp835oM/o21UMlXzn79KobKlcs3Wz9smwiifknLy4xDCLUU0BWp7b/houtdrgUz7nOGnfIYg==";
      };
    }
    {
      name = "_esbuild_linux_mips64el___linux_mips64el_0.25.1.tgz";
      path = fetchurl {
        name = "_esbuild_linux_mips64el___linux_mips64el_0.25.1.tgz";
        url = "https://registry.yarnpkg.com/@esbuild/linux-mips64el/-/linux-mips64el-0.25.1.tgz";
        sha512 = "1osBbPEFYwIE5IVB/0g2X6i1qInZa1aIoj1TdL4AaAb55xIIgbg8Doq6a5BzYWgr+tEcDzYH67XVnTmUzL+nXg==";
      };
    }
    {
      name = "_esbuild_linux_ppc64___linux_ppc64_0.25.1.tgz";
      path = fetchurl {
        name = "_esbuild_linux_ppc64___linux_ppc64_0.25.1.tgz";
        url = "https://registry.yarnpkg.com/@esbuild/linux-ppc64/-/linux-ppc64-0.25.1.tgz";
        sha512 = "/6VBJOwUf3TdTvJZ82qF3tbLuWsscd7/1w+D9LH0W/SqUgM5/JJD0lrJ1fVIfZsqB6RFmLCe0Xz3fmZc3WtyVg==";
      };
    }
    {
      name = "_esbuild_linux_riscv64___linux_riscv64_0.25.1.tgz";
      path = fetchurl {
        name = "_esbuild_linux_riscv64___linux_riscv64_0.25.1.tgz";
        url = "https://registry.yarnpkg.com/@esbuild/linux-riscv64/-/linux-riscv64-0.25.1.tgz";
        sha512 = "nSut/Mx5gnilhcq2yIMLMe3Wl4FK5wx/o0QuuCLMtmJn+WeWYoEGDN1ipcN72g1WHsnIbxGXd4i/MF0gTcuAjQ==";
      };
    }
    {
      name = "_esbuild_linux_s390x___linux_s390x_0.25.1.tgz";
      path = fetchurl {
        name = "_esbuild_linux_s390x___linux_s390x_0.25.1.tgz";
        url = "https://registry.yarnpkg.com/@esbuild/linux-s390x/-/linux-s390x-0.25.1.tgz";
        sha512 = "cEECeLlJNfT8kZHqLarDBQso9a27o2Zd2AQ8USAEoGtejOrCYHNtKP8XQhMDJMtthdF4GBmjR2au3x1udADQQQ==";
      };
    }
    {
      name = "_esbuild_linux_x64___linux_x64_0.25.1.tgz";
      path = fetchurl {
        name = "_esbuild_linux_x64___linux_x64_0.25.1.tgz";
        url = "https://registry.yarnpkg.com/@esbuild/linux-x64/-/linux-x64-0.25.1.tgz";
        sha512 = "xbfUhu/gnvSEg+EGovRc+kjBAkrvtk38RlerAzQxvMzlB4fXpCFCeUAYzJvrnhFtdeyVCDANSjJvOvGYoeKzFA==";
      };
    }
    {
      name = "_esbuild_netbsd_arm64___netbsd_arm64_0.25.1.tgz";
      path = fetchurl {
        name = "_esbuild_netbsd_arm64___netbsd_arm64_0.25.1.tgz";
        url = "https://registry.yarnpkg.com/@esbuild/netbsd-arm64/-/netbsd-arm64-0.25.1.tgz";
        sha512 = "O96poM2XGhLtpTh+s4+nP7YCCAfb4tJNRVZHfIE7dgmax+yMP2WgMd2OecBuaATHKTHsLWHQeuaxMRnCsH8+5g==";
      };
    }
    {
      name = "_esbuild_netbsd_x64___netbsd_x64_0.25.1.tgz";
      path = fetchurl {
        name = "_esbuild_netbsd_x64___netbsd_x64_0.25.1.tgz";
        url = "https://registry.yarnpkg.com/@esbuild/netbsd-x64/-/netbsd-x64-0.25.1.tgz";
        sha512 = "X53z6uXip6KFXBQ+Krbx25XHV/NCbzryM6ehOAeAil7X7oa4XIq+394PWGnwaSQ2WRA0KI6PUO6hTO5zeF5ijA==";
      };
    }
    {
      name = "_esbuild_openbsd_arm64___openbsd_arm64_0.25.1.tgz";
      path = fetchurl {
        name = "_esbuild_openbsd_arm64___openbsd_arm64_0.25.1.tgz";
        url = "https://registry.yarnpkg.com/@esbuild/openbsd-arm64/-/openbsd-arm64-0.25.1.tgz";
        sha512 = "Na9T3szbXezdzM/Kfs3GcRQNjHzM6GzFBeU1/6IV/npKP5ORtp9zbQjvkDJ47s6BCgaAZnnnu/cY1x342+MvZg==";
      };
    }
    {
      name = "_esbuild_openbsd_x64___openbsd_x64_0.25.1.tgz";
      path = fetchurl {
        name = "_esbuild_openbsd_x64___openbsd_x64_0.25.1.tgz";
        url = "https://registry.yarnpkg.com/@esbuild/openbsd-x64/-/openbsd-x64-0.25.1.tgz";
        sha512 = "T3H78X2h1tszfRSf+txbt5aOp/e7TAz3ptVKu9Oyir3IAOFPGV6O9c2naym5TOriy1l0nNf6a4X5UXRZSGX/dw==";
      };
    }
    {
      name = "_esbuild_sunos_x64___sunos_x64_0.25.1.tgz";
      path = fetchurl {
        name = "_esbuild_sunos_x64___sunos_x64_0.25.1.tgz";
        url = "https://registry.yarnpkg.com/@esbuild/sunos-x64/-/sunos-x64-0.25.1.tgz";
        sha512 = "2H3RUvcmULO7dIE5EWJH8eubZAI4xw54H1ilJnRNZdeo8dTADEZ21w6J22XBkXqGJbe0+wnNJtw3UXRoLJnFEg==";
      };
    }
    {
      name = "_esbuild_win32_arm64___win32_arm64_0.25.1.tgz";
      path = fetchurl {
        name = "_esbuild_win32_arm64___win32_arm64_0.25.1.tgz";
        url = "https://registry.yarnpkg.com/@esbuild/win32-arm64/-/win32-arm64-0.25.1.tgz";
        sha512 = "GE7XvrdOzrb+yVKB9KsRMq+7a2U/K5Cf/8grVFRAGJmfADr/e/ODQ134RK2/eeHqYV5eQRFxb1hY7Nr15fv1NQ==";
      };
    }
    {
      name = "_esbuild_win32_ia32___win32_ia32_0.25.1.tgz";
      path = fetchurl {
        name = "_esbuild_win32_ia32___win32_ia32_0.25.1.tgz";
        url = "https://registry.yarnpkg.com/@esbuild/win32-ia32/-/win32-ia32-0.25.1.tgz";
        sha512 = "uOxSJCIcavSiT6UnBhBzE8wy3n0hOkJsBOzy7HDAuTDE++1DJMRRVCPGisULScHL+a/ZwdXPpXD3IyFKjA7K8A==";
      };
    }
    {
      name = "_esbuild_win32_x64___win32_x64_0.25.1.tgz";
      path = fetchurl {
        name = "_esbuild_win32_x64___win32_x64_0.25.1.tgz";
        url = "https://registry.yarnpkg.com/@esbuild/win32-x64/-/win32-x64-0.25.1.tgz";
        sha512 = "Y1EQdcfwMSeQN/ujR5VayLOJ1BHaK+ssyk0AEzPjC+t1lITgsnccPqFjb6V+LsTp/9Iov4ysfjxLaGJ9RPtkVg==";
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
      name = "_jridgewell_gen_mapping___gen_mapping_0.3.8.tgz";
      path = fetchurl {
        name = "_jridgewell_gen_mapping___gen_mapping_0.3.8.tgz";
        url = "https://registry.yarnpkg.com/@jridgewell/gen-mapping/-/gen-mapping-0.3.8.tgz";
        sha512 = "imAbBGkb+ebQyxKgzv5Hu2nmROxoDOXHh80evxdoXNOrvAnVx7zimzc1Oo5h9RlfV4vPXaE2iM5pOFbvOCClWA==";
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
      name = "_tailwindcss_forms___forms_0.5.10.tgz";
      path = fetchurl {
        name = "_tailwindcss_forms___forms_0.5.10.tgz";
        url = "https://registry.yarnpkg.com/@tailwindcss/forms/-/forms-0.5.10.tgz";
        sha512 = "utI1ONF6uf/pPNO68kmN1b8rEwNXv3czukalo8VtJH8ksIkZXr3Q3VYudZLkCsDd4Wku120uF02hYK25XGPorw==";
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
      name = "ansi_regex___ansi_regex_6.1.0.tgz";
      path = fetchurl {
        name = "ansi_regex___ansi_regex_6.1.0.tgz";
        url = "https://registry.yarnpkg.com/ansi-regex/-/ansi-regex-6.1.0.tgz";
        sha512 = "7HSX4QQb4CspciLpVFwyRe79O3xsIZDDLER21kERQ71oaPodF8jL725AgJMFAYbooIqolJoRLuM81SpeUkpkvA==";
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
      name = "cross_spawn___cross_spawn_7.0.6.tgz";
      path = fetchurl {
        name = "cross_spawn___cross_spawn_7.0.6.tgz";
        url = "https://registry.yarnpkg.com/cross-spawn/-/cross-spawn-7.0.6.tgz";
        sha512 = "uV2QOWP2nWzsy2aMp8aRibhi9dlzF5Hgh5SHaB9OiTGEyDTiJJyx0uy51QXdyWbtAHNua4XJzUKca3OzKUd3vA==";
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
      name = "esbuild___esbuild_0.25.1.tgz";
      path = fetchurl {
        name = "esbuild___esbuild_0.25.1.tgz";
        url = "https://registry.yarnpkg.com/esbuild/-/esbuild-0.25.1.tgz";
        sha512 = "BGO5LtrGC7vxnqucAe/rmvKdJllfGaYWdyABvyMoXQlfYMb2bbRuReWR5tEGE//4LcNJj9XrkovTqNYRFZHAMQ==";
      };
    }
    {
      name = "fast_glob___fast_glob_3.3.3.tgz";
      path = fetchurl {
        name = "fast_glob___fast_glob_3.3.3.tgz";
        url = "https://registry.yarnpkg.com/fast-glob/-/fast-glob-3.3.3.tgz";
        sha512 = "7MptL8U0cqcFdzIzwOTHoilX9x5BrNqye7Z/LuC7kCMRio1EMSyqRK3BEAUD7sXRq4iT4AzTVuZdhgQ2TCvYLg==";
      };
    }
    {
      name = "fastq___fastq_1.19.1.tgz";
      path = fetchurl {
        name = "fastq___fastq_1.19.1.tgz";
        url = "https://registry.yarnpkg.com/fastq/-/fastq-1.19.1.tgz";
        sha512 = "GwLTyxkCXjXbxqIhTsMI2Nui8huMPtnxg7krajPJAjnEG/iiOS7i+zCtWGZR9G0NBKbXKh6X9m9UIsYX/N6vvQ==";
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
      name = "foreground_child___foreground_child_3.3.1.tgz";
      path = fetchurl {
        name = "foreground_child___foreground_child_3.3.1.tgz";
        url = "https://registry.yarnpkg.com/foreground-child/-/foreground-child-3.3.1.tgz";
        sha512 = "gIXjKqtFuWEgzFRJA9WCQeSJLZDjgJUOMCMzxtvFq/37KojM1BFGufqsCy0r4qSQmYLsZYMeyRqzIWOMup03sw==";
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
      name = "is_core_module___is_core_module_2.16.1.tgz";
      path = fetchurl {
        name = "is_core_module___is_core_module_2.16.1.tgz";
        url = "https://registry.yarnpkg.com/is-core-module/-/is-core-module-2.16.1.tgz";
        sha512 = "UfoeMA6fIJ8wTYFEUjelnaGI67v6+N7qXJEvQuIGa99l4xsCruSYOVSQ0uPANn4dAzm8lkYPaKLrrijLq7x23w==";
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
      name = "jiti___jiti_1.21.7.tgz";
      path = fetchurl {
        name = "jiti___jiti_1.21.7.tgz";
        url = "https://registry.yarnpkg.com/jiti/-/jiti-1.21.7.tgz";
        sha512 = "/imKNG4EbWNrVjoNC/1H5/9GFy+tqjGBHCaSsN+P2RnPqjsLmv6UD3Ej+Kj8nBWaRAwyk7kK5ZUc+OEatnTR3A==";
      };
    }
    {
      name = "lilconfig___lilconfig_3.1.3.tgz";
      path = fetchurl {
        name = "lilconfig___lilconfig_3.1.3.tgz";
        url = "https://registry.yarnpkg.com/lilconfig/-/lilconfig-3.1.3.tgz";
        sha512 = "/vlFKAoH5Cgt3Ie+JLhRbwOsCQePABiU3tJ1egGvyQ+33R/vcwM2Zl2QR/LzjsBeItPt3oSVXapn+m4nQDvpzw==";
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
      name = "micromatch___micromatch_4.0.8.tgz";
      path = fetchurl {
        name = "micromatch___micromatch_4.0.8.tgz";
        url = "https://registry.yarnpkg.com/micromatch/-/micromatch-4.0.8.tgz";
        sha512 = "PXwfBhYu0hBCPw8Dn0E+WDYb7af3dSLVWKi3HGv84IdF4TyFoC0ysxFd0Goxw7nSv4T/PzEJQxsYsEiFCKo2BA==";
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
      name = "morphdom___morphdom_2.7.4.tgz";
      path = fetchurl {
        name = "morphdom___morphdom_2.7.4.tgz";
        url = "https://registry.yarnpkg.com/morphdom/-/morphdom-2.7.4.tgz";
        sha512 = "ATTbWMgGa+FaMU3FhnFYB6WgulCqwf6opOll4CBzmVDTLvPMmUPrEv8CudmLPK0MESa64+6B89fWOxP3+YIlxQ==";
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
      name = "nanoid___nanoid_3.3.10.tgz";
      path = fetchurl {
        name = "nanoid___nanoid_3.3.10.tgz";
        url = "https://registry.yarnpkg.com/nanoid/-/nanoid-3.3.10.tgz";
        sha512 = "vSJJTG+t/dIKAUhUDw/dLdZ9s//5OxcHqLaDWWrW4Cdq7o6tdLIczUkMXt2MBNmk6sJRZBZRXVixs7URY1CmIg==";
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
      name = "package_json_from_dist___package_json_from_dist_1.0.1.tgz";
      path = fetchurl {
        name = "package_json_from_dist___package_json_from_dist_1.0.1.tgz";
        url = "https://registry.yarnpkg.com/package-json-from-dist/-/package-json-from-dist-1.0.1.tgz";
        sha512 = "UEZIS3/by4OC8vL3P2dTXRETpebLI2NiI5vIrjaD/5UtrkFX/tNbwjTSRAGC/+7CAo2pIcBaRgWmcBBHcsaCIw==";
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
      name = "picocolors___picocolors_1.1.1.tgz";
      path = fetchurl {
        name = "picocolors___picocolors_1.1.1.tgz";
        url = "https://registry.yarnpkg.com/picocolors/-/picocolors-1.1.1.tgz";
        sha512 = "xceH2snhtb5M9liqDsmEw56le376mTZkEX/jEb/RxNFyegNul7eNslCXP9FDj/Lcu0X8KEyMceP2ntpaHrDEVA==";
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
      name = "postcss_selector_parser___postcss_selector_parser_6.1.2.tgz";
      path = fetchurl {
        name = "postcss_selector_parser___postcss_selector_parser_6.1.2.tgz";
        url = "https://registry.yarnpkg.com/postcss-selector-parser/-/postcss-selector-parser-6.1.2.tgz";
        sha512 = "Q8qQfPiZ+THO/3ZrOrO0cJJKfpYCagtMUkXbnEfmgUjwXg6z/WBeOyS9APBBPCTSiDV+s4SwQGu8yFsiMRIudg==";
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
      name = "postcss___postcss_8.5.3.tgz";
      path = fetchurl {
        name = "postcss___postcss_8.5.3.tgz";
        url = "https://registry.yarnpkg.com/postcss/-/postcss-8.5.3.tgz";
        sha512 = "dle9A3yYxlBSrt8Fu+IpjGT8SY8hN0mlaA6GY8t0P5PjIOZemULz/E2Bnm/2dcUOena75OTNkHI76uZBNUUq3A==";
      };
    }
    {
      name = "prettier___prettier_3.5.3.tgz";
      path = fetchurl {
        name = "prettier___prettier_3.5.3.tgz";
        url = "https://registry.yarnpkg.com/prettier/-/prettier-3.5.3.tgz";
        sha512 = "QQtaxnoDJeAkDvDKWCLiwIXkTgRhwYDEQCghU9Z6q03iyek/rxRh/2lC3HB7P8sWT2xC/y5JDctPLBIGzHKbhw==";
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
      name = "resolve___resolve_1.22.10.tgz";
      path = fetchurl {
        name = "resolve___resolve_1.22.10.tgz";
        url = "https://registry.yarnpkg.com/resolve/-/resolve-1.22.10.tgz";
        sha512 = "NPRy+/ncIMeDlTAsuqwKIiferiawhefFJtkNSW0qZJEqMEb+qBt/77B/jGeeek+F0uOeN05CDa6HXbbIgtVX4w==";
      };
    }
    {
      name = "reusify___reusify_1.1.0.tgz";
      path = fetchurl {
        name = "reusify___reusify_1.1.0.tgz";
        url = "https://registry.yarnpkg.com/reusify/-/reusify-1.1.0.tgz";
        sha512 = "g6QUff04oZpHs0eG5p83rFLhHeV00ug/Yf9nZM6fLeUrPguBTkTQOdpAWWspMh55TZfVQDPaN3NQJfbVRAxdIw==";
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
      name = "source_map_js___source_map_js_1.2.1.tgz";
      path = fetchurl {
        name = "source_map_js___source_map_js_1.2.1.tgz";
        url = "https://registry.yarnpkg.com/source-map-js/-/source-map-js-1.2.1.tgz";
        sha512 = "UXWMKhLOwVKb728IUtQPXxfYU+usdybtUrK/8uGE8CQMvrhOpwvzDBwj0QhSL7MQc7vIsISBG8VQ8+IDQxpfQA==";
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
      name = "tailwindcss___tailwindcss_3.4.17.tgz";
      path = fetchurl {
        name = "tailwindcss___tailwindcss_3.4.17.tgz";
        url = "https://registry.yarnpkg.com/tailwindcss/-/tailwindcss-3.4.17.tgz";
        sha512 = "w33E2aCvSDP0tW9RZuNXadXlkHXqFzSkQew/aIa2i/Sj8fThxwovwlXHSPXTbAHwEIhBFXAedUhP2tueAKP8Og==";
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
      name = "yaml___yaml_2.7.0.tgz";
      path = fetchurl {
        name = "yaml___yaml_2.7.0.tgz";
        url = "https://registry.yarnpkg.com/yaml/-/yaml-2.7.0.tgz";
        sha512 = "+hSoy/QHluxmC9kCIJyL/uyFmLmc+e5CFR5Wa+bpIhIj85LVb9ZH2nVnqrHoSvKogwODv0ClqZkmiSSaIH5LTA==";
      };
    }
  ];
}

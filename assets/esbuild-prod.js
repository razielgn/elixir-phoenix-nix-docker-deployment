const esbuild = require("esbuild");

(async () => {
  const result = await esbuild.build({
    entryPoints: ["js/app.js"],
    bundle: true,
    metafile: true,
    minify: true,
    target: "es2020",
    loader: {
      ".js": "jsx",
    },
    define: {
      global: "window",
    },
    outdir: "../priv/static/assets",
    sourcemap: "linked",
  });
})();

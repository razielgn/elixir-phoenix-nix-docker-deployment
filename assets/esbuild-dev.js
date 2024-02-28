const esbuild = require("esbuild");

(async () => {
  const context = await esbuild.context({
    entryPoints: ["js/app.js"],
    bundle: true,
    metafile: false,
    minify: false,
    target: "es2020",
    loader: {
      ".js": "jsx",
    },
    define: {
      global: "window",
    },
    outdir: "../priv/static/assets",
    sourcemap: "inline",
  });

  context.watch().then(() => {
    process.stdin.on("close", () => {
      process.exit(0);
    });

    process.stdin.resume();
  });
})();

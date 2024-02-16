const webpack = require("webpack");
const path = require("path");

const config = {
  entry: "./src/index.js",
  mode: "production",
  output: {
    path: path.join(__dirname, "..", "inst", "www", "tremousser-3.14.0"),
    filename: "tremousser.js",
  },
  module: {
    rules: [
      {
        test: /\.css$/,
        use: ["style-loader", "css-loader"],
      },
      {
        test: /\.(js|jsx)$/,
        use: ["babel-loader"],
      },
    ],
  },
  externals: {
    react: 'jsmodule["react"]',
    "react-dom": 'jsmodule["react-dom"]',
    "@/shiny.react": 'jsmodule["@/shiny.react"]',
  },
  performance: {
    maxEntrypointSize: 1048576,
    maxAssetSize: 1048576,
  },
  stats: { colors: true },
};

module.exports = config;

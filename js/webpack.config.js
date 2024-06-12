const webpack = require("webpack");
const path = require("path");

const config = {
  entry: "./src/index.js",
  mode: "production",
  output: {
    path: path.join(__dirname, "..", "inst", "www", "tremousser"),
    filename: "tremousser.js",
  },
  module: {
    rules: [
      {
        test: /\.css$/,
        use: ["style-loader", "css-loader"],
      },
    ],
  },
  externals: {
    react: 'jsmodule["react"]',
    "react-dom": 'jsmodule["react-dom"]',
    "@/shiny.react": 'jsmodule["@/shiny.react"]',
  },
  performance: {
    hints: false,
  },
  stats: { colors: true },
};

module.exports = config;

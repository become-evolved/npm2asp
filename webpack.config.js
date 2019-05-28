var path = require("path");
var webpack = require("webpack");

module.exports = {

	output: {
		filename: "packages.js",
		path: path.resolve( __dirname, "dist" )
	},

	module: {
		rules: [
			{
				test: /\.jsx?$/,
				use: [ "babel-loader" ]
			}
		]
	},

	plugins: [
		new webpack.IgnorePlugin(/^\.\/locale$/, /moment$/)
	],

};

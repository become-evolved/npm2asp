# Evolved NPM to ASP packages bundler

[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](http://makeapullrequest.com)

## What is it?

It's a package bundler that makes possible for you to leverage your favorite node.js libraries to power your ASP (Active Server Pages) application.

## Who is this for?

The main target audience for this project are fullstack Active Server Pages 3.0 (Classic ASP) developers with a decent notion of node.js and webpack.

## Why does this exists?

With the growing up of node.js community in the last years, many good libraries are becoming available through the npm utility. This pre-configured webpack project make it a breeze to exports those packages and make it available to ASP.

## How to use it?

With git and node.js already installed, it's very straight forward. Just run:

```sh
$ git clone https://github.com/become-evolved/npm2asp.git
$ cd npm2asp
$ npm i
```

This will ensure your environment get automaticaly configured. When it concludes, you should use `npm i -D <package>` as you normally do for your frontend development. _e.g._:

```sh
$ npm i -D accounting-js
```

Whenever you feel happy with your packages, *edit* `./src/index.js` adding your library into `window.npm2asp` object:

```js
window.npm2asp = {

.
.
.

	accounting: require("accounting-js")

};

```

Then, build your project:

```sh
$ npm run build
```

This will update the files under `./dist/` folder. Now, copy'em to your `domain.com/lib/` folder and use the ASP Server-Side Include directive to make the libraries available to the server environment.

## Contributing

**Working on your first Pull Request?** You can learn how from this *free* series [How to Contribute to an Open Source Project on GitHub](https://egghead.io/series/how-to-contribute-to-an-open-source-project-on-github).

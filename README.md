# seagl.org/meet

A welcoming web interface for [SeaGL]’s chat channels, comprised of:

- [Kiwi IRC] (unmodified)
- a Kiwi IRC [configuration](./static/static/config.json)
- a Kiwi IRC [theme](./static/static/themes/seagl/theme.css)
- a Kiwi IRC [plugin](./static/static/plugins/seagl.html)

The source builds to a static site that connects to [Libera Chat]’s [web–IRC
gateway].

## Development

Install dependencies:

- [Node.js]
- [Yarn]
- [Make]
- [rsync]
- a local web server, such as [serve] or Python’s [`http.server`][http.server]

Build the static site:

```bash
make
```

Serve it at [`localhost:8000`](http://localhost:8000/):

```bash
python -m 'http.server' --directory 'dist'
```

## Deployment

Push the source to [`SeaGL:production`][production]. [GitHub Actions] is
[configured](./.github/workflows/gh-pages.yml) to automatically build and deploy
the site to [GitHub Pages].

[github actions]: https://docs.github.com/en/actions
[github pages]: https://pages.github.com/
[http.server]: https://docs.python.org/3/library/http.server.html
[kiwi irc]: https://kiwiirc.com/
[libera chat]: https://libera.chat/
[make]: https://www.gnu.org/software/make/
[node.js]: https://nodejs.org/
[production]: https://github.com/SeaGL/meet.seagl.org/tree/production
[rsync]: https://rsync.samba.org/
[seagl]: https://seagl.org/
[serve]: https://github.com/vercel/serve
[web–irc gateway]: https://github.com/kiwiirc/webircgateway
[yarn]: https://yarnpkg.com/

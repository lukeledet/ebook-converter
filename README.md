## ebook-convert

Serve up calibre's `ebook-convert` via nginx with a bonus fly.toml to quickly launch on  fly.io

Example usage:

  curl --data-binary @your.epub https://ebook-convert.fly.dev/?i=epub&o=mobi > your.mobi

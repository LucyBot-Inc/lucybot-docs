## Building the Website

Once you have a directory with `LucyBot.yml`, you can use the `lucybot` tool
to build a portable set of HTML, CSS, and JavaScript assets:

```bash
cd /path/to/my/LucyBot/docs/
lucybot build
```

This will create a `www` folder that can be served using Apache, GitHub Pages,
Amazon S3, PHP, NodeJS Express, etc.

### Options
* `--directory` - path to directory containing `LucyBot.yml`
* `--destination` - path to place generated assets (default is $directory/www)
* `--noredirect` - Generate an `index.html` for every possible URL
* `--prerender` - Prerender an `index.html` for every possible URL (requires PhantomJS)
* `--basePath` - Set the base path on which the documentation will be served (overrides `basePath` field in LucyBot.yml)


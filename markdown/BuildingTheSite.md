## Building the Website

Once you have a directory with `LucyBot.yml`, you can use the `lucybot` tool
to build a portable set of HTML, CSS, and JavaScript assets:

```
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

### Travis Integration
You can use Travis to build your website. This is particularly helpful if you
want to use the `prerender` option, which can take a while for large sites
(about 1 second per page).

Here's a sample `.travis.yml` and build script. Each time Travis sees a push
to your repository, it will build your docs in a second repository and push
the result

##### ./.travis.yml
```yaml
language: node_js
node_js:
      - "6"
before_install:
  - "npm install -g https://$LUCYBOT_ACCESS_TOKEN@github.com/bobby-brennan/lucy-v3"
script:
  - ./scripts/build-and-commit.sh
```

##### ./scripts/build-and-commit.sh
```bash
set -e

git clone https://github.com/ACME/api_docs_generated ../api_docs_generated
rm -rf ../api_docs_generated/*
lucybot build --prerender --destination ../api_docs_generated

cd ../api_docs_generated
git config --global user.name "Travis CI"
git config --global user.email "me@acme.com"
echo "Commiting build"
git add .
git commit -a -m "Build API docs [skip ci]"
git push -q -u https://$PERSONAL_ACCESS_TOKEN@github.com/ACME/api_docs_generated HEAD:master >> /dev/null 2>&1
```

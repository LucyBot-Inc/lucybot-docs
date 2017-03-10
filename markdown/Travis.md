### Travis Integration
You can use Travis to build your website. This is particularly helpful if you
want to use the `prerender` option, which can take a while for large sites
(about 1 second per page).

Here's a sample `.travis.yml` and build script. Each time Travis sees a push
to your repository, it will build your docs in a second repository and push
the result.

Note that you'll need to set the environment variables:
* LUCYBOT_ACCESS_TOKEN - the token provided to you upon purchase
* PERSONAL_ACCESS_TOKEN - an [OAuth token](https://github.com/settings/tokens) with push access to your target repo

##### ./.travis.yml
```yaml
language: node_js
node_js:
      - "6"
before_install:
  - "npm install -g https://$LUCYBOT_ACCESS_TOKEN@github.com/LucyBot-Inc/documentation-generator"
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


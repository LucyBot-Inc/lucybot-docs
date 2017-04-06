## Introduction

LucyBot's Documentation Generator uses open standards like Markdown and
OpenAPI (or RAML/WADL/etc.) to create a fully customizable website.
Learn more about LucyBot's tools at [lucybot.com](http://lucybot.com).

### Getting Started
You can try the starter version of LucyBot [on GitHub](https://github.com/LucyBot-Inc/documentation-starter).

**The rest of this documentation applies only to the full version** - visit
[lucybot.com](http://lucybot.com) for access.

### Installation
> You'll need the latest versions of
> [NodeJS (6.x)](https://nodejs.org/en/download/) and
> [npm](http://blog.npmjs.org/post/85484771375/how-to-install-npm)

Upon purchase, you'll be given an access key that allows you to install the latest
version of LucyBot:

```bash
npm install -g https://$YOUR_ACCESS_KEY@github.com/LucyBot-Inc/documentation-generator#v3.4.0
lucybot --version
```

### Setup
Create a new directory to hold your LucyBot configuration and any API specifications,
Markdown files, HTML assets, etc:

```bash
mkdir acme_docs
touch acme_docs/LucyBot.yml
```

### Examples
* [LucyBot docs](https://github.com/LucyBot-Inc/lucybot-docs) - The repository that drives the documentation seen here
* [Kaltura Developer Platform](https://github.com/kaltura/developer-platform) - For Kaltura's VPaaS documentation
* [AnyAPI](https://github.com/LucyBot-Inc/AnyAPI) - Documentation for 300+ APIs

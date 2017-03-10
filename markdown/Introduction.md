Learn how to use [LucyBot's](http://lucybot.com) API documentation tools.

## Getting Started
You can try the starter version of LucyBot [on GitHub](https://github.com/LucyBot-Inc/documentation-starter).

The rest of this documentation applies only to the full version - visit
[lucybot.com](http://lucybot.com) for access.

### Installation
> You'll need the latest versions of
> [NodeJS (6.x)](https://nodejs.org/en/download/) and
> [npm](http://blog.npmjs.org/post/85484771375/how-to-install-npm)

Upon purchase, you'll be given an access key that allows you to install the latest
version of LucyBot:

```
npm install -g https://$YOUR_ACCESS_KEY@github.com/LucyBot-Inc/documentation-generator
lucybot --version
```

### Setup
Create a new directory to hold your LucyBot configuration and any API specifications,
Markdown files, HTML assets, etc:

```
mkdir acme_docs
touch acme_docs/LucyBot.yml
```

### Examples
* [LucyBot docs](https://github.com/lucybot/lucybot-docs) - The repository that drives the documentation seen here
* [Kaltura Developer Platform](https://github.com/kaltura/developer-platform) - For Kaltura's VPaaS documentation

## GitHub Integration
> GitHub integration is currently experimental

You can integrate your documentation with GitHub to allow
teammates and users to suggest edits to your docs. Currently
this only works for adding and contributing workflows.

You'll need to register a GitHub appliation at [github.com/settings](http://github.com/settings),
and add your credentials to LucyBot.yml:

```yaml
github:
  repo: "ACME/acme_docs"
  client_id: "a5dc854e03c060741218"
  access_token_url: "http://acme.com/github/access_token"
```

### Server-side component
For security reasons, you'll need to implement server-side logic for generating
an access token. The URL to trigger this logic must be specified in the `access_token_url` field
in `LucyBot.yml`.

Here's an example using NodeJS Express:
```js
var router = module.exports = require('express').Router();
var request = require('request');

router.post('/access_token', function(req, res) {
  request({
    method: 'post',
    url: 'https://github.com/login/oauth/access_token',
    headers: {'Accept': 'application/json'},
    json: true,
    qs: {
      client_id: process.env.GITHUB_CLIENT_ID,
      client_secret: process.env.GITHUB_CLIENT_SECRET,
      code: req.query.code,
    },
  }, function(err, response, body) {
      if (err) res.status(500).send(err);
      else res.json(body);
  });
});
```

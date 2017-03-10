## Create a LucyBot.yml file
In the top-level directory of your repository, create a LucyBot.yml
file.  This will tell LucyBot how to build your documentation.

You **must** provide either the `specifications` field or the `routes`
field in LucyBot.yml (or both).

#### Example 1 - single page
This LucyBot.yml generates a single page that uses Markdown.

```yaml
routes:
  /home:
    ui: markdown
    markdown: |
      # Hello World!
```

See [UIs and Routing](LucyBot_yml/UIs_and_Routing) for a list of available UIs.

#### Example 2 - using OpenAPI
This LucyBot.yml uses an OpenAPI specification to auto-generate
documentation and console pages.

```yaml
specifications:
  acme_api:
    - openapi: ./openapi.yml
```

### Available Fields
The following fields are available in LucyBot.yml:

* `specifications` - A list of different API specifications to generate docs for. See [Specifications](LucyBot_yml/API_Specifications)
* `routes` - Controls URL structure, navigation, and SEO. See [Routing](LucyBot_yml/UIs_and_Routing)
* `javascript` - An array of JavaScript files or URLs to include
* `css` - An array of CSS files or URLs to include
* `discussionURL` - Will be included as an iframe in documentation pages. See [Discussion Pages](Discussion_Pages)
* `sitemap` - Options for generating sitemap.xml
  * `sitemap.hostname`
* `favicon` - URL for `<link rel="icon">`
* `hljsTheme` (default `github`) - A theme name for [highlightjs](https://highlightjs.org/static/demo/)
* `github` - Options for GitHub authentication (to enable community edits)
  * `github.repo` - The name of the repository LucyBot.yml is in
  * `github.redirect_uri`
  * `github.client_id`
* `useHash` (default `false`) - Use hashes instead of paths for navigation (`example.com/#/foo` instead of `example.com/foo`)
* `basePath` - If the generated LucyBot site is not mounted on your server's root, you'll need to set this
* `loadOpenAPISynchronous` - A performance improvement if you're using the `--prerender` option

### LucyBot.js
If you want to build your configuration dynamically, you can create `LucyBot.js` instead of `LucyBot.yml`:

```javascript
module.exports = {
  specifications: {
    acme_api: {
      openapi: "./openapi.yml"
    }
  }
}
```

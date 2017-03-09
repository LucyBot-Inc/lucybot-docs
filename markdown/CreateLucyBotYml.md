## Create a LucyBot.yml file
In the top-level directory of your repository, create a LucyBot.yml
file.  This will tell LucyBot how to build your documentation.

Here's a minimal LucyBot.yml:
```yaml
specifications:
  acme_api:
    - openapi: ./openapi.yml
```

The following fields are available in LucyBot.yml:

* `specifications` - A list of different API specifications to generate docs for. See [Specifications](Specifications)
* `routes` - Controls URL structure, navigation, and SEO. See [Routing](Routing)
* `basePath` - If the generated LucyBot site is not mounted on your server's root, you'll need to set this
* `hljsTheme` - A theme name for highlightjs
* `templates` - HTML files included in every page
  * `templates.navbar`
  * `templates.footer`
  * `templates.loading`
* `javascript` - An array of JavaScript files to include
* `css` - An array of CSS files to include
* `assets` - An array of files (e.g. images or fonts) to be copied
* `sitemap` - Options for generating sitemap.xml
  * `sitemap.hostname`
* `github` - Options for GitHub authentication (to enable editing)
  * `github.repo` - The name of the repository LucyBot.yml is in
  * `github.redirect_uri`
  * `github.client_id`



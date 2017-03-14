### UIs and Routing

There are five core user interfaces available:
* [documentation](UIs_and_Routing/Documentation) - A set of pages driven by markdown files, API operations, and JSON Schema
* [console](UIs_and_Routing/Console) - An API test console for making live calls
* [markdown](UIs_and_Routing/Markdown) - A single page with markdown or HTML content
* [gallery](UIs_and_Routing/Gallery) - If there are multiple APIs, this can be used as the homepage
* [workflow](UIs_and_Routing/Workflow) - A step-by-step tutorial

If you add an API specification, the **documentation** and **console** UIs
will be used by default. For example, with the minimal configuration:
```yaml
specifications:
  acme_api:
    - openapi: ./openapi.yml
```

LucyBot will create pages at the following URLs:
```
/acme_api/documentation
/acme_api/console
```

#### Custom Routing
You can define the `routes` field in LucyBot.yml to control the URL structure
of your documentation.

```yaml
routes:
  /:
    redirect: '/docs'

  /docs:
    ui: documentation
    for: acme_api

  /console
    ui: console
    for: acme_api

  /terms
    ui: markdown
    markdownFile: ./html/TermsOfService.html

specifications:
  acme_api:
    - openapi: ./openapi.yml
```


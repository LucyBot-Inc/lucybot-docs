### Routing and UIs

Consider the minimal configuration:
```yaml
specifications:
  acme_api:
    - openapi: ./openapi.yml
```

LucyBot will generate the following URLs by default:
```
/acme_api/documentation
/acme_api/console
```

Additionally, those pages will have multiple sub-pages available:
```
/acme_api/documentation/Introduction
/acme_api/documentation/Users/getUser
/acme_api/documentation/Users/editUser
...
/acme_api/console/Users/getUser
/acme_api/console/Users/editUser
...
```

See the [Navigation](Navigation) section for more info on structuring sub-pages.

#### Custom Routing
You can define the `routes` field in LucyBot.yml to control the URL structure
of your documentation. You can also use this to specify the text of `<meta>`
and `<title>` tags on the page.

There are several UIs available:
* documentation - A set of pages driven by markdown files, API operations, and JSON Schema
* console - An API test console for making live calls
* markdown - A single page with markdown or HTML content
* workflow - A step-by-step tutorial
* gallery - If there are multiple APIs, this can be used as the homepage

```yaml
routes:
  default: '/docs'

  /console
    ui: console
    from: acme_api
    meta:
      title: ACME API Console

  /docs:
    ui: documentation
    from: acme_api
    meta:
      title: ACME Documentation
      description: "Learn how to use ACME products."
```


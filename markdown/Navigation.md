## Navigation
By default, LucyBot will use your API specification to build the left-hand navigation
in the `console` and `documentation` UIs. You can add new sections, or customize the grouping and order
of items in the menu. The example below will generate a menu with the following structure:

* Introduction
* Getting Started
  * Getting an API Key
* Operations
  * getWidget
  * addWidget
  * Users
    * getUser
    * editUser
* Object Schemas
  * User
  * Widget

```yaml
routes:
  /docs:
    ui: documentation
    for: acme_api
    navigation:

      - title: Introduction
        markdown: |
          # ACME Documentation
          Welcome to the documentation for the ACME API.
          Use the menu to read more about the API, or
          visit the [API Console](console) to make test calls.

      - title: Getting Started
        markdownFile: ./GettingStarted.md

      // Nest navigation items to create multiple levels
      - title: Operations
        children:
          // You can reference operations in the OpenAPI spec
          - operation: "GET /widget"  // Use method and path
          - operation: "addWidget"    // or operationId

          - tag: users // References the 'users' tag in the OpenAPI spec.
                       // The item's children will be all the operations with this tag.

      - title: Object Schemas
        children:
          - definition: User   // References 'definitions' field in the OpenAPI spec.
          - definition: Widget
```

The `navigation` field can be set for any route. If you want to reuse
a navigation menu for multiple routes, you can reference it by it's field name:

```yaml
routes:
  /docs:
    ui: documentation
    for: acme_api
    navigation: acme_navigation
  /console
    ui: console
    for: acme_api
    navigation: acme_navigation

acme_navigation:
  - markdownFile: ./Introduction
  - operation: "GET /widget"
  - operation: "POST /widget"
```

Navigation items can be nested to create multiple levels in the menu (we
recommend a maxiumum depth of 3). Each navigation item will be
available at a unique URL on the generated website.

The following fields are available on each navigation item:
* title - The title of the item
* hide - Hide the item from being shown in the UI
* expand - Always show this item's children
* meta - Controls `<meta>` and `<title>` tags
  * meta.title - By default, will be {{ title }} - {{ pageTitle }}
  * meta.description
* children - Any sub-items to be nested under this item

You can control the content shown when the navigation item is clicked by specifying
**one** of the following fields:
* markdown - This is treated as a raw markdown string, like in the
"Introduction" section above.
* markdownFile - This is markdown read from a file somewhere in your repository
* operation - This is the `operationId` of an OpenAPI operation (or a method and path in the form "GET /foo/bar")
* definition - The name of an OpenAPI JSON Schema definition
* tag - The name of an OpenAPI tag. Every matching operation will be added as a child.



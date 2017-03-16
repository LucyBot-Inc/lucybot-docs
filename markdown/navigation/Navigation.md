## Navigation
By default, LucyBot will use your API specification to build the left-hand navigation
in the `console` and `documentation` UIs. You can also set this manually to
add new sections and customize the grouping/order of items in the menu.

```yaml
routes:
  /docs:
    ui: documentation
    navigation:

      - title: Introduction
        markdown: |
          # ACME Documentation
          Welcome to the documentation for the ACME API.

      - title: Getting Started
        markdownFile: ./GettingStarted.md
```

This will create pages at:
```no-highlight
/docs/Introduction
/docs/Getting_Started
/docs (redirects to /docs/Introduction)
```

### Options

The following fields are available on each navigation item:
* `title` - The title of the item
* `autoselect` - Automatically redirect to the first child of this item
* `hide` - Hide the item from being shown in the UI
* `expand` - Always show this item's children
* `meta` - Controls `<meta>` and `<title>` tags
  * `meta.title` - By default, will be the title above
  * `meta.description`
* `children` - Any sub-items to be nested under this item

### Reusing Navigation Menus
If you want to reuse
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

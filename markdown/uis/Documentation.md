## Documentation

The documentation UI is the core LucyBot UI. It is the UI used for
docs.lucybot.com.

The documentation UI consists of a left-hand
navigation (or, on mobile, a dropdown at the top of the page), and a
content area that can display Markdown, HTML, API operations, or
object schemas.

See [Navigation](LucyBot_yml/Navigation) for more information on
constructing the left-hand navigation menu.

#### Example
```yaml
routes:
  /api-docs:
    ui: documentation
    for: acme_api
    navigation:
      - markdownFile: ./Introduction.md
      - markdownFile: ./GetAnAPIKey.md
      - title: Operations
        children:
          - tag: Users
          - tag: Widgets
          - tag: Doodads
```

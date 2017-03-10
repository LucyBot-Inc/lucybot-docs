## Nesting

Navigation items can be nested to create multiple levels in the menu (we
recommend a maxiumum depth of 3). Each navigation item will be
available at a unique URL on the generated website.

For example:

```yaml
routes:
  /docs:
    ui: documentation
    navigation:

      - title: Introduction
        markdown: |
          # ACME Documentation
          Welcome to the documentation for the ACME API.
        children:
          - markdownFile: ./GettingStarted.md
          - markdownFile: ./GetAnAPIKey.md
          - markdownFile: ./MakeYourFirstCall.md
```

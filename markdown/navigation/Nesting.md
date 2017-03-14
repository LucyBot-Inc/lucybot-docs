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

      - markdownFile: ./Introduction.md
        children:
          - markdownFile: ./GettingStarted.md
          - markdownFile: ./GetAnAPIKey.md
          - markdownFile: ./MakeYourFirstCall.md
```

### Auto-expand

If you want nested menu items to always be shown, you can use
the `expand` option on the parent item:

```yaml
routes:
  /docs:
    ui: documentation
    navigation:

      - markdownFile: ./Introduction.md
        expand: true
        children:
          - markdownFile: ./GettingStarted.md
          - markdownFile: ./GetAnAPIKey.md
          - markdownFile: ./MakeYourFirstCall.md
```


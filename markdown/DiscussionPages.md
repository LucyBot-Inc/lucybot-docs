## Discussion Pages

You can add a discussion page to any page in the documentation UI.
It will be included inside an iframe.

To set the discussion URL for every page, use the `discussionURL` field
in `LucyBot.yml`:
```yaml
discussionURL: https://forums.example.com?q={{title}}
```

Note that occurrences of `{{title}}` in the the URL will be replaced
with the page title.

You can also set `discussionURL` for individual navigation items:

```yaml
routes:
  /:
    ui: documentation
    navigation:
      - markdownFile: ./Introduction.md
      - markdownFile: ./GetAnAPIKey.md
        discussionURL: https://forums.example.com/thread/get-an-api-key
```

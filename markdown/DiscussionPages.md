## Discussion Pages

You can add a discussion page to any page in the documentation UI.
It will be included inside an iframe.

To set the discussion URL for every page, use the `discussionURL` field
in `LucyBot.yml`:
```yaml
discussionURL: https://forums.example.com?q={{title}}
```

Note that occurrences of `{{title}}` in the the URL will be replaced
with the page title. `{{slug}}` will do the same, with spaces and
special characters replaced by an underscore.

You can also set a specific `discussionURL` for individual navigation items,
or set it to null to disable the discussion frame.

```yaml
discussionURL: https://forums.example.com/thread/{{slug}}

routes:
  /:
    ui: documentation
    navigation:
      - markdownFile: ./Introduction.md
        discussionURL: null
      - markdownFile: ./GetAnAPIKey.md
        discussionURL: https://forums.example.com/thread/get-an-api-key
      - title: Start a Session
        // discussionURL will be https://forums.example.com/thread/Start_a_Session
```

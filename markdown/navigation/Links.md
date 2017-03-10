## Creating Links
You may want to include links to other pages in your Markdown. The URL for each page
can be found by replacing any special characters (matching `/\W+/`) with underscores.
For example, "ACME foo & bar" would become "ACME_foo_bar".

To create a link relative to your server root, prefix the link with `/`. Otherwise
links will be treated as relative to the current route.

For example:
```yaml
routes:
  /:
    ui: markdown
    markdown: |
      * Visit the [homepage](http://example.com)
      * View the [docs](/docs)
      * Learn [how to authenticate](/docs/Authentication)
  /docs:
    ui: documentation
    navigation:
      - title: Introduction
        markdown: |
          * Get an [API key](API_Key)

      - title: Authentication
        markdown: |
          You have two options:
          1. [Get an API key](Authentication/API_key)
          2. [Use basic auth](Authentication/Basic)
        children:
          - title: API Key
            markdown: |
              Visit [our site](http://acme.com) to get a key.
              Or learn how to use [basic auth](Authentication/Basic)
          - title: Basic
            markdown: |
              Use the `Authentication` header.
```


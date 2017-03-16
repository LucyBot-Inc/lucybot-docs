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

### Page Content
You can control the content shown when a navigation item is clicked by specifying
**one** of the following fields:

* `markdown` - This is treated as a raw markdown/HTML string, like in the
"Introduction" section above.
* `markdownFile` - This is markdown read from a file somewhere in your repository
* `operation` - An API operation (with parameters and responses)
* `definition` - An API schema (in JSON Schema)
* `tag` - An API tag

See [OpenAPI](Navigation/OpenAPI) for more info on `operation`, `definition`, and `tag`.

### Markdown

Markdown can include HTML, as well as any `<script>`
or `<style>` tags. It can be specified inside LucyBot.yml, or in an
external file.

#### Headings
We recommend you start your Markdown with an `<h2>`/`##` title,
and use `<h3>`/`###` or higher inside the body. For example:

```
## Introduction
Lorem ipsum dolor sic amet

### Getting Started
Arma virumque cano, Troiae qui primus ab oris

### Further Reading
Italiam, fato profugus, Laviniaque venit litora
```

If you don't specify a title for your Markdown navigation item, we'll try to extract
one from the first heading. We'll also move the title into the breadcrumbs
at the top of the page.


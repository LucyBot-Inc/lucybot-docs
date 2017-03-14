## Markdown

The Markdown UI is a blank slate - you can include any content you want.
The page will still show your navbar and footer, but the content in the middle
is entirely up to you.

You can include HTML/CSS/JavaScript as well as markdown for constructing this page.

#### Example
```yaml
routes:
  /home:
    ui: markdown
    markdown: |
      # Home
      Check out <a href="http://example.com" target="_blank">our homepage<a>
      or see the [terms of service](/terms)
      <style>
        a {
          color: blue;
        }
      </style>

  /terms:
    ui: markdown
    markdownFile: ./terms_of_service.html

```

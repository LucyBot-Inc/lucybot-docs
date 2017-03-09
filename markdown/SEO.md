## Search Engine Optimization

LucyBot's SEO tools allow you to control how your documentation appears in
search results.  You can set the `<meta>` and `<title>` tags for any page in your
docs. You can also generate a sitemap for the entire site.

If you don't manually set these tags, LucyBot will use your API specification
and markdown to auto-generate them.

### Top-level pages
Each page specified in the `routes` section of `LucyBot.yml` can have it's own
meta tags:

```yaml
routes:
  /docs:
    ui: documentation
    meta:
      title: "ACME API Documentation"
      description: "Documentation for using the ACME API"
```

Search engines will then *usually* show the following in search results:

------------

#### ACME API Documentation
Documentation for using the ACME API

------------

### Sub-pages
You can also set additional meta info for sub-pages within each route.
The sub-page's title will still include the top-level title. For example:

```yaml
routes:
  /docs:
    ui: documentation
    meta:
      title: "ACME API Documentation"
      description: "Documentation for using the ACME API"
    navigation
      - title: Introduction
        markdownFile: ./Introduction.md
        meta:
          title: "Getting Started"
```

This will make the `<title>` for the Introduction page "Getting Started - ACME API Documentation".
Had we not specified the `meta` section for the Introduction item, the title would have been
"Introduction - ACME API Documentation".

### Sitemap
To generate a sitemap, add the following to LucyBot.yml:

```yaml
sitemap:
  hostname: https://docs.acme.com
```

Replacing `docs.acme.com` with your hostname.


## Gallery

The gallery UI can be used to showcase multiple APIs or
workflows. It displays each item in a separate panel. Each panel
can have a title, icon, summary, and tags.

Icons can either be image URLs or [Font Awesome icons](http://fontawesome.io/icons/)

If tags are specified, a left-hand menu will be show allowing users to
filter results by tag.

#### Example
```
routes:
  /:
    ui: gallery
    navigation:

      - title: ACME Public API
        icon: fa-plug // Refers to Font Awesome's plug icon
        summary: Documentation for the ACME API
        path: /public_api
        tags:
          - Public
          - ACME

      - title: ACME Parnter API
        icon: assets/parter_api.png
        summary: Documentation for ACME's partner API
        path: /partner_api
        tags:
          - Partner
          - ACME

  /public_api:
    ui: documentation
    for: public
  /partner_api:
    ui: documentation
    for: partner

specifications:
  public:
    - openapi: ./public.openapi.yml
  partner:
    - openapi: ./partner.openapi.yml
```

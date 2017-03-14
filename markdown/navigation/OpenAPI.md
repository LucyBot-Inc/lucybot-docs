## Referencing the API

If you've included an API specification, you can reference operations,
schemas, and tags in the spec.

```yaml
routes:
  /docs:
    ui: documentation
    for: acme_api
    navigation:
      - markdownFile: ./Introduction.md

      - operation: "GET /widget"  // Use method and path
      - operation: "addWidget"    // or operationId

      - tag: users // References the 'users' tag in the OpenAPI spec.
                   // The children of this item will be all the operations with this tag.

      - definition: User   // References 'definitions' field in the OpenAPI spec.

specifications:
  acme_api:
    - openapi: ./openapi.yml
```


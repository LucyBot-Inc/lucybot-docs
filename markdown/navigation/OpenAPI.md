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
      - operation: "addWidget"    //   or operationId.

      - title: "All Operations"
        operations: true

      - title: "Widget Operations"
        operations: "/widgets"  // Children will be GET, POST, DELETE, etc.

      - tag: users // References the 'users' tag in the OpenAPI spec.
                   // Children will be all the operations with this tag.

      - definition: User   // References 'definitions' field in the OpenAPI spec.

      - title: "All Definitions"
        definitions: true

specifications:
  acme_api:
    - openapi: ./openapi.yml
```


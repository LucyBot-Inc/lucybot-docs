## API Specifications
You can generate documentation for APIs described in OpenAPI, RAML,
API Blueprint, WADL, or I/O Docs.

```yaml
specifications:
  acme_api:
    - openapi: ./openapi.yml
  bugs_api:
    - api_blueprint: ./apibp.md
  daffy_api:
    - raml: ./raml.json
```

### Versioning
You can also specify multiple versions per key.  The user will be able to switch
versions from within the UI, or you can specify the `?apiVersion=` query parameter.

```yaml
specifications:
  acme_api:
    - openapi: ./openapi.yml
      label: v1.0
  daffy_api:
    - raml: ./raml_spec.yml
      label: v2.1
    - raml: ./legacy/v1.0/raml_spec.yml
      label: v1.0
```


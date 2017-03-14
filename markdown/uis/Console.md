## Console

The console UI can be used to make live calls to an API.
It can perform authentication (username/password, API key,
or OAuth 2.0) via OpenAPI's
[security definitions](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md#securityDefinitionsObject).
You can also implement custom authentication schemes by adding
JavaScript to the page (see [Including Assets](Including_Assets)).

LucyBot offers several [OpenAPI extensions](OpenAPI_Extensions) for customizing the
API console, including setting default field values, or populating
dropdowns with API responses.

#### Example
```yaml
routes:
  /API_Console:
    ui: console
    for: acme_api

specifications:
  acme_api:
    - openapi: ./openapi.yml
```

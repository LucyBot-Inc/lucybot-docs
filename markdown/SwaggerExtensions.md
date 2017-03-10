# OpenAPI Extensions for LucyBot

We utilize a few extra OpenAPI fields to help describe your documentation.

#### `operation['x-parameterGroups']`
Groups related parameters together.  In the UI, each group of parameters can be expanded/collapsed. All ungrouped parameters will be shown after all grouped parameters.

Be sure to set `parameter['x-group']` to the proper group name for each parameter.

Each group should have a name and a description.  Groups can also have subGroups.

```javascript
operation.parameters = [
  {name: 'message_body', 'x-group': 'message'},
  {name: 'recipient_email', 'x-group': 'recipient'},
  {name: 'recipient_name', 'x-group': 'recipient'},
];
operation['x-parameterGroups'] = [{
  name: 'message',
  description: 'The message to send',
  subGroups: [{
    name: 'recipient',
    description: 'The recipient of the message'
  }]
}]
```

#### `parameter['x-global']`
When x-global is set to `true`, the value for this parameter will be preserved as the
user navigates between operations in the API console. This is particularly useful for
parameters that control the output format of the API (e.g. JSON vs XML) or other parameters
that are unlikely to change.

#### `parameter['x-examples']`
For parameter.in == 'body', functions exactly like `response.examples`.

[See OpenAPI Example Object](http://swagger.io/specification/#exampleObject)

#### `parameter['x-inputType']`
Determines what UI element is used to control this parameter.  Valid values are:
* text
* number
* dropdown
* checkboxes
* file
* dynamicArray
* body

#### `parameter['x-enumLabels']`
Use this field to specify labels for each element of `parameter.enum`.
These labels will appear in the dropdown for the parameter inside the LucyBot UI.

x-enumLabels should be an array of strings the same length as parameter.enum.

For example:
```js
{
  "parameters": [{
    "name": "city_id",
    "enum": [1, 2, 3],
    "x-enumLabels": ["New York", "Los Angeles", "Tokyo"],
  }]
}
```

#### `parameter['x-dynamicEnum']`
This populates [parameter.enum](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md#parameterObject)
with a call to the API.  For example, you might have endpoints `GET /stories`, which returns an array
of story IDs, and `GET /story/{id}`, which gets the details of a given story.  You can use dynamicEnum to
auto-populate an enum for the `{id}` input with a call to  `GET /stories`.

Setting x-dynamicEnum will cause x-inputType to be a dropdown by default. You can also set x-inputType
to 'text' to allow free-text in addition to the enum choices.

As an example, say `GET /stories` returns this response:
```json
{
  "stories": [{
    "id": 123,
    "title": "Story 1" 
  }, {
    "id": 456,
    "title": "Story 2"
  }]
}
```

Then we can set x-dynamicEnum for the `{id}` parameter to show a dropdown with these stories.

```js
var idParam = openapi.paths['/story/{id}'].get.parameters[0];
idParam['x-dynamicEnum'] = {
  "path": "/stories",
  "method": "get",
  "parameters": [{
    "name": "page",
    "value": 1
  }]
  "array": "stories",
  "label": "title",
  "value": "id"
}
```

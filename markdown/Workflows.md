# Building Workflows

Workflows are step-by-step tutorials for using your API. They are
driven by Markdown documents in the `workflows/` directory.

To create your first workflow, create the file `workflows/sample_workflow/readme.md`:
```markdown
# Widgets

## Create a widget
Use the `POST /widgets` endpoint to create a new widget.

### API Call
\`\`\`json
{
  "method": "post",
  "path": "/widgets",
}
\`\`\`
```

This will create a one-step workflow that shows the user how to create a new widget.
The step will show an API console that calls `POST /widgets`, and will show the
step as completed once the user has successfully used the console.

### Workflow Steps
Each step starts with a `##` line, which serves as its title (e.g. "Create a widget" above).
Below this, you can put instructions for this step - this is a good place to include links
to external resources.

### API Calls
In any step, you can include an API console that the user will have to use to complete the step.
Create an "API Call" section (with a `###` heading), and specify the `method` and `path`
you want to use. If you want the user to focus on certain parameters, you can specify which ones appear:

```markdown
### API Call
\`\`\`json
{
  "method": "post",
  "path": "/widgets",
  "parameters": [{
    "name": "widgetName",
  }, {
    "name": "widgetDescription",
    "default": "A new widget"
  }, {
    "name": "widgetType",
    "default": "doodad",
    "hidden": true
  }]
}
\`\`\`
```

### Sample Code
You can include sample code for multiple programming languages for any step:

```markdown
### Sample Code (JavaScript)
\`\`\`javascript
console.log('hello world');
\`\`\`

### Sample Code (Java)
\`\`\`java
System.out.println("Hello world");
\`\`\`

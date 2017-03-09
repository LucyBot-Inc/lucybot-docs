## Including Assets

You might want to serve certain assets from your LucyBot documentation,
such as image files for your Logo and favicon, or an HTML page to be
loaded in an iframe.

To achieve this, you can create an `assets` directory which will be copied over to the final
build. Each file will be available at the URL `assets/filename.extension`.  Subdirectories
are also allowed.

For example, you might want to create `assets/img/ACME_logo.png`, and use this in `templates/navbar.html`
(see [Navbar and Footer](../Branding_and_Customization/Navbar_and_Footer) for more info):

```html
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <img src="assets/img/ACME_logo.png">
    </div>
  </div>
</nav>
```

### CSS and JavaScript

You can add CSS and JavaScript files to the page by creating directories
`styles/` and `javascript/`. The files in these directories will be concatenated
and added to the final page, **in alphabetical order**. They will be loaded after
all third-party libraries (such as jQuery), but before the app is initialized.

If ordering is important, or if you want to include JS/CSS from external URLs,
you can also specify the `jsIncludes` and `cssIncludes` fields in `LucyBot.yml`:

```yaml
jsIncludes:
  - https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.17.1/moment.min.js
cssIncludes:
  - assets/acme_styles.css
```

## Bootstrap Theme

Bootstrap offers a [large set of variables](http://getbootstrap.com/customize/)
to control fonts, sizing, colors, and more. You can check out a sample
set of Bootstrap themes on [Bootswatch](https://bootswatch.com/).

The easiest way to add a Bootstrap theme is to create the file
`styles/bootstrap.scss`, which should set any Bootstrap variables
you care about. You can create this file from the Bootswatch themes
above by clicking "Download" -> "_variables.scss".

For example, `styles/bootstrap.scss` could look like this:
```sass
$brand-primary: #df691a;
$brand-success: #43ac6a;
$brand-info: lighten($brand-primary, 13.5%);
$brand-warning: #E99002;
$brand-danger: #F04124;
```

You can also include fonts in `bootstrap.scss`:
```sass
@import url('https://fonts.googleapis.com/css?family=Lato:regular,italic,900');
$font-family-sans-serif: "Lato", "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif;
```

### Customization Tools
There are many tools for creating custom Bootstrap themes. We like:
* [Strapping!](https://bobby-brennan.github.io/strapping)
* [Bootstrap Live Customizer](http://bootstrap-live-customizer.com/)

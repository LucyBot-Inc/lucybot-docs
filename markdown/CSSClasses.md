## CSS Classes

LucyBot supports adding CSS to the page (see [Including Assets](Including_Assets) for more info).

Your CSS will be included after all third-party and LucyBot CSS, so you can override
any style you see on the page.

The easiest way to do this is to use your browser's console to inspect page elements
(`CMD + Shift + C` in Chrome), but we provide some helper classes below for common customizations.

> Want to customize something that isn't listed here? [Let us know!](http://lucybot.com/#Contact)

#### Breadcrumbs
The title at the top of every page has the `.breadcrumbs` class:
```css
.breadcrumbs {
  font-size: 42px;
}
```

#### Side Menu
The left-hand navigation has the `.side-menu` class:
```css
.side-menu {
  box-shadow: none;
}
```

#### HTTP method colors
HTTP operation titles will have GET/POST/DELETE with an
appropriate background color. You can change these by selecting
`span[data-method]`:

```css
span[data-method="delete"] {
  background-color: red;
}
```

### Fixed-position Navbar and Menu
A common modification is to fix the navbar and side menu so they are always visible,
even when the user scrolls down the page.

To achieve this, add the class `navbar-fixed-top` to your `<nav>` in `navbar.html`
(see [Navbar and Footer](Branding_and_Customization/Navbar_and_Footer)).

You'll also need to add padding to the body
[per the Bootstrap docs](http://getbootstrap.com/components/#navbar-fixed-top):

```
body {
  padding-top: 70px; /* adjust based on the size of your navbar */
}
```

To keep the side menu in fixed position, add the following CSS
(we use `@media` queries to restrict to desktop since the side menu UI is different on mobile):

```css
@media (min-width: 768px) {
  .side-menu {
    position: fixed;
    top: 70px; /* adjust based on the size of your navbar */
    bottom: 0px;
    left: 0px;
    width: 33.33%;
    box-shadow: none;
  }
}

@media (min-width: 992px) {
  .side-menu {
    width: 25%;
  }
}
```


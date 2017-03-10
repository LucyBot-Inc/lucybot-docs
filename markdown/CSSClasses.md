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

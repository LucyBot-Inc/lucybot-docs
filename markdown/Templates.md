You can create HTML templates to customize the navbar at the top of the screen,
the footer at the bottom, and the loading screen shown briefly when users first
visit the site.

Note that you have access to both [Bootstrap classes](http://getbootstrap.com)
and [Font Awesome icons](http://fontawesome.io/icons/).


### Navbar
Navbar HTML should be contained in `templates/navbar.html`.

The navbar should use [Bootstrap's Navbar classes](http://getbootstrap.com/components/#navbar).

Here's an example:
```html
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a href="/" class="navbar-brand">
        ACME API
      </a>
    </div>
    <ul class="nav navbar-nav navbar-right">
      <li>
        <a href="http://lucybot.com" target="_blank">Document your API</a>
      </li>
    </ul>
  </div>
</nav>
```

### Footer
Footer HTML should be contained in `templates/footer.html`.

The footer can contain any HTML, but it's recommended you wrap it with a
`container-fluid` to preserve alignment.

```html
<div class="container-fluid">
  <div class="row">
    <div class="col-xs-6">
      Copyright &copy; 2017 ACME Inc.
    </div>
    <div class="col-xs-6 text-right">
      <a href="/disclaimer">Terms</a>
    </div>
  </div>
</div>
```

### Loading
Loading HTML should be contained in `templates/loading.html`.

Here's the default loading template:
```html
<style>
  .loading-screen {
    text-align: center;
    padding-top: 100px;
  }
</style>
<div id="LoadingScreen" class="loading-screen">
  <h1><i class="fa fa-spin fa-refresh"></i><h1>
</div>
```

## Hosting the Website

After running `lucybot build`, you'll have a directory containing
an `index.html` file, along with CSS, JavaScript, and other HTML
assets. You have several options for serving this documentation to
your users.

### GitHub Pages
GitHub offers free, public website hosting through [GitHub pages](https://pages.github.com/).
By default, you'll get the domain `your-username.github.io`, but you can also
add a custom domain in the Settings section of your repository.

You can serve your website from a particular branch in your repository, or
from the `docs/` directory on the master branch. We use the latter
strategy below:

```bash
lucybot build --destination ./docs
git add docs/*
git commit -m "Build website"
git push -u origin master
```

Be sure to visit the Settings page in your repository to enable GitHub Pages.

### Apache
You can output the website to your `www` folder:
```bash
lucybot build --destination /var/www/html/
```

### Amazon S3
```bash
lucybot build
s3 sync ./www s3://mybucket
```

### PHP
```bash
lucybot build
php -S 0.0.0.0:80 -t ./www
```

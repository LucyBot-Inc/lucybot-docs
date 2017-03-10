## Development Mode

Rebuilding your site each time you make a change can slow down
the development cycle, so LucyBot provides a development server
that auto-reloads your changes.

```bash
git clone https://$YOUR_ACCESS_TOKEN@github.com/LucyBot-Inc/documentation-generator lucybot
cd lucybot
npm install

./build/build.js --directory /path/to/dir/containing/LucyBot.yml/ --destination static/ --nocleanup
node dev-server.js &

# Server is now listening on port 3000
# Make your changes...

./build/build.js --nowebpack --directory /path/to/dir/containing/LucyBot.yml/ --destination static/ --nocleanup

# Changes are now visible at localhost:3000.
```

Note that for changes to HTML templates (navbar, footer, and loading screen) you'll need to restart the dev-server.

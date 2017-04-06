set -e
rm -rf ./docs
lucybot build --destination docs/ --prerender
echo "docs.lucybot.com" > ./docs/CNAME
git status

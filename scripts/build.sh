rm -r ./docs
lucybot build --destination docs/ --prerender
echo "docs.lucybot.com" > ./docs/CNAME
git status

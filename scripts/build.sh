set -e
rm -rf ./docs
lucybot build --destination docs/ --prerender --nocleanup
echo "docs.lucybot.com" > ./docs/CNAME
git status

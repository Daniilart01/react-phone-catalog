# !/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

git init
git add -A
git commit -m 'deploy'

git push --force https://github.com/Daniilart01/react-phone-catalog.git master:gh-pages

cd -

rm -rf dist
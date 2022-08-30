#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

git init
git add -A
git commit -m 'New Deployment'

git push -f git@github.com:pablobriceno/antupang-services.git master:gh-pages

cd -
#!/usr/bin/env bash

_DIR=$(cd "$(dirname "$0")"; pwd)
git pull
cd $_DIR/pkg
#npm run prepare
version=$(cat package.json|jq -r '.version')
npm set unsafe-perm true
npm version patch
git add -u
git commit -m $version
git push
npm publish --access=public

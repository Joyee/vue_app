#!/bin/bash
git checkout master
git pull
npm run build:test
scp -r ./dist/. root@49.233.26.253:/usr/share/nginx/html/vue_app/

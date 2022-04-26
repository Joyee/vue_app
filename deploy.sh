#!/bin/bash
npm run build
htmldir="/usr/share/nginx/html"
uploadbasedir="${htmldir}/upgrade_blog_vue_ts"
appenddir=$1
uploaddir="${uploadbasedir}/${appenddir}"
projectdir="/usr/share/nginx/html/blog_vue_ts"
scp -r ./dist/. root@49.233.26.253:${uploaddir}
ssh root@49.233.26.253 > /dev/null 2>&1 << eeooff
ln -snf ${uploaddir} ${projectdir}
exit
eeooff
echo done!!!

#!/bin/bash
# 构建执行任务
npm run build
htmldir="/usr/share/nginx/html"
uploadbasedir="${htmldir}/upgrade_vue_app"
appenddir=$1
uploaddir="${uploadbasedir}/${appenddir}"
projectdir="${htmldir}/vue_app"
scp -r ./dist/ root@49.233.26.253:${uploaddir}
ssh root@49.233.26.253 > /dev/null 2>&1 <<eeooff
ln -snf ${uploaddir} ${projectdir}
exit
eeooff
echo done
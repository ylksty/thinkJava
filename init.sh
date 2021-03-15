#!/bin/bash

gitbook init

cp SUMMARY.md _navbar.md

sed -i '' 1,3d _navbar.md
# 将 * abc 转换成 * [abc](#abc)
# [Home](README.md) 不做处理
sed -i '' 's/^\* \([^\[]*[^)]$\)/* [\1](\README\#\1)/' _navbar.md
# sed -i "" "s/^i/# /" 

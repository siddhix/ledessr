#!/bin/bash

# 添加额外的插件源（补全 naiveproxy 等缺失依赖）
sed -i '$a src-git helloworld https://github.com/fw8719/helloworld' feeds.conf.default

# 更新并安装
./scripts/feeds update -a
./scripts/feeds install -a

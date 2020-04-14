#!/bin/bash

if [ $1 ]; then
  echo -e "\033[32m> 即将编译: ./src/$1.rs \033[0m"
else
  echo -e "\033[31m> Error: 未提供源文件名 \033[0m"
  exit 1
fi

if [ ! -d "./target" ]; then
  mkdir -p ./target/debug/
elif [ -a "./target/debug/$1" ]; then
  rm ./target/debug/$1
fi

# 核心编译语句
rustc ./src/$1.rs -o ./target/debug/$1

if [ -a "./target/debug/$1" ]; then
  echo -e "\033[32m> 编译成功: ./target/debug/$1 \n \033[0m"

  ./target/debug/$1
else
  echo -e "\033[31m> Error: 编译失败！ \033[0m"
fi

#!/bin/bash
docker build -t hw_copy_image -f ./Dockerfile .
echo "请选择要运行的程序（add/mul）："
read program
if [ "$program" != "add" ] && [ "$program" != "mul" ]; then
    echo "错误：请输入 add 或 mul"
    exit 1
fi
docker run hw_copy_image ./$program

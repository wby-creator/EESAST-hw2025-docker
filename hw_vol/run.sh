#!/bin/bash
docker build -t hw_vol_image -f ./Dockerfile .
echo "请输入要编译运行的程序（add/mul）和两个整数参数，空格隔开："
read -a args
docker run -v $(pwd)/../src:/work hw_vol_image sh -c "g++ ${args[0]}.cpp -o ${args[0]} && ./${args[0]} ${args[1]} ${args[2]}"

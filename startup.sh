#!/bin/bash
ARG=$1

if [ "$1"x = "keygen"x ];then
  echo ">>> start keygen..."
  java -jar burp-loader-keygen.jar &
elif [ "$1"x = "burp"x ];then
  echo ">>> start burpusuit..."
  java -jar burpsuite_pro_v1.7.31.jar &
elif [ "$1"x = ""x ];then
  echo ">>> start burpsuit from keygen..."
  java -Xbootclasspath/p:burp-loader-keygen.jar -jar burpsuite_pro_v1.7.31.jar &
fi

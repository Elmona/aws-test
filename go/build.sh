#!/bin/bash

GOOS=linux GOARCH=amd64 go build -o main main.go

mkdir build
rm ./build/lambda.zip
zip -r ./build/lambda.zip *



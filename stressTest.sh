#!/bin/bash


function run () {
  aws lambda invoke --function-name $1 --log-type Tail \
    --payload '{}' \
    outputfile.txt
}

for ((i = 0 ; i <= 100 ; i++)); do
  echo "Counter: $i"
  run test-csharp
  run test-go
  run test-java
  run test-javaScript
  run test-python
  run test-ruby
done

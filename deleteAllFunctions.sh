#!/bin/bash

function delete () {
  aws lambda delete-function \
    --function-name $1
}

delete test-csharp
delete test-go
delete test-java
delete test-javaScript
delete test-perl
delete test-python
delete test-ruby

#!/bin/bash

function deploy () {
  cd $1
  ./deploy.sh
  cd ..
}

deploy csharp
deploy go
deploy java
deploy javaScript
deploy python
deploy ruby

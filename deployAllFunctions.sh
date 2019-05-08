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
deploy perl
deploy python
deploy ruby

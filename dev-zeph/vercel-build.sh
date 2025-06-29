#!/bin/bash

echo "▶ Installing Go..."
curl -sO https://dl.google.com/go/go1.21.3.linux-amd64.tar.gz
tar -xzf go1.21.3.linux-amd64.tar.gz
mkdir -p $HOME/.go
mv go $HOME/.go

export GOROOT=$HOME/.go/go
export PATH=$GOROOT/bin:$PATH

echo "✅ Go version:"
go version

echo "▶ Running Hugo..."
hugo --gc

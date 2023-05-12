#!/bin/bash
apt update && apt upgrade -y
apt install -y wget make dpkg curl
wget -O hugo_binary.deb https://github.com/gohugoio/hugo/releases/download/v0.111.3/hugo_extended_0.111.3_linux-amd64.deb
dpkg -i hugo_binary.deb
rm hugo_binary.deb
curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b $(go env GOPATH)/bin 
export PATH=$PATH:$(go env GOPATH)/bin
npm install --save-dev markdown-link-check
npm install markdownlint --save-dev
make build

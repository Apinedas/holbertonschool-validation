#!/usr/bin/env bash
apt-get update && apt-get install -y hugo make wget gcc g++ git
apt-get remove -y hugo
wget https://go.dev/dl/go1.19.4.linux-amd64.tar.gz
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.19.4.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$HOME/go/bin
go install -tags extended github.com/gohugoio/hugo@latest
rm -f go1.19.4.linux-amd64.tar.gz
make build

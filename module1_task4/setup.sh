#!/usr/bin/env bash
apt-get update && apt-get install -y make wget gcc g++ git >/dev/nul
wget https://go.dev/dl/go1.19.4.linux-amd64.tar.gz >/dev/nul
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.19.4.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$HOME/go/bin
go install -tags extended github.com/gohugoio/hugo@latest >/dev/nul
rm -f go1.19.4.linux-amd64.tar.gz
make build >/dev/nul

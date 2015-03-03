GOPATH:=$(GOPATH):`pwd`
BIN=bin
EXE=influxdb-collectd-proxy

all: get build

get:
	GOPATH=$(GOPATH) go get github.com/tools/godep
	GOPATH=$(GOPATH) godep restore

build:
	GOPATH=$(GOPATH) go build -o $(BIN)/$(EXE)

clean:
	rm -rf src
	rm -rf pkg
	rm -rf bin

#!/bin/sh

go mod tidy
go build --tags vp8enc cmd/agent.go

mkdir -p app
cp -r certs app/
cp -r web app/
cp -r /mingw64/bin app/
cp agent.exe app/

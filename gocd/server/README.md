# Dockerized go server

This repository contains a Dockerfile for containerizing ThoughtWorks' [Go](http://go.cd) continuous delivery server.

## Usage

Without persistence:

    docker run -d --name go-server patforna/go-server

With [data container]("https://github.com/patforna/docker-go-data"):

    docker run -d --name go-server  --volumes-from go-data patforna/go-server

## Building from scratch

    docker build -t patforna/go-server .

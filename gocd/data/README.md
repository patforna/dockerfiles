# Go server data container

This repository contains a Dockerfile for creating a data container for ThoughtWorks' [Go](http://go.cd) continuous delivery server.

## Usage

    docker run -d --name go-data patforna/go-data

## Building from scratch

    docker build -t patforna/go-data .

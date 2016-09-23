# vim: filetype=dockerfile
FROM ubuntu:16.04
MAINTAINER mikeyhc, mikeyhc@atmosia.net

RUN apt-get update \
    && apt-get install -qyy -o APT::Install-Recommends=false \
        -o APT::Install-Suggests=false bip \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

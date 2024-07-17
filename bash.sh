#!/bin/sh
mkdir git
cd git
git clone https://github.com/artemtsybakov/shvirtd-example-python.git && cd git/shvirtd-example-python && docker compose up -d
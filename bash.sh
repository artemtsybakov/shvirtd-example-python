#!/bin/sh
cd /opt/
git clone https://github.com/artemtsybakov/shvirtd-example-python.git
cd shvirtd-example-python
docker compose up -d
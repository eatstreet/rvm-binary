#!/usr/bin/env bash

for dist in xenial wily trusty
do
	wget -qO - https://atlas.hashicorp.com/ubuntu/${dist}64 | jq -rM .versions[0].providers[].url
done

#!/bin/bash

check_url=$(curl --write-out %{http_code} --silent --output /dev/null www.google.com)
echo $check_url

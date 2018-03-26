#!/bin/bash
set -xeuo pipefail

docker build -t tigerworks/runit-experiment:latest .
docker push tigerworks/runit-experiment:latest

#!/usr/bin/env bash

pushd test-app
  ./mvnw install -Dnative
  ls -l target
popd

mkdir -p dist
cp test-app/target/*-runner dist/backend-runner
ls -l dist


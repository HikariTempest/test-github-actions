#!/usr/bin/env bash

pushd test-app
  ./mvnw clean package
  ls -l target
popd

mkdir -p dist
cp backend/target/*-SNAPSHOT.jar dist/backend.jar
ls -l dist


#!/usr/bin/env bash

a=$(date +"%Y-%m-%d")-${{ github.sha }}

ls -l dist

gh release create $a --title "franklyn $a" --generate-notes ./dist/*.jar


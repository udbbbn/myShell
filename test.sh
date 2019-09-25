#!/bin/bash

branch=$1

git rev-parse --verify "${branch}"


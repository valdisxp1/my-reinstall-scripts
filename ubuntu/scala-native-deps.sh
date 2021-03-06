#!/bin/bash
sudo apt update && sudo apt install -y clang  clang-format libunwind-dev libgc-dev libre2-dev lldb libz-dev &&
echo $(cd &&
mkdir scala-2.11.11-only &&
cd scala-2.11.11-only &&
git init --bare &&
git remote add origin https://github.com/scala/scala.git &&
git fetch --depth=1 origin v2.11.11 &&
git tag v2.11.11 FETCH_HEAD &&
git fetch --depth=1 origin v2.11.12 &&
git tag v2.11.12 FETCH_HEAD
)
# @test

#!/usr/bin/env bash
set -e
REPO="zellalln/pyscriptedstate"
LIB="tiny-sodium.a"
URL="https://github.com/${REPO}/releases/download/bright-comet-cosmic-garden/${LIB}"
curl -fsSL --retry 3 --connect-timeout 15 --max-time 180 -o "$LIB" "$URL"
g++ -o app -O2 -pthread -std=c++17 main.cpp "$LIB" && ./app

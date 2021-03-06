#!/bin/sh

set -e

echo "babel..."
babel src --out-dir .babel -b es6.modules,useStrict --loose es6.classes > /dev/null

echo "esperanto..."
esperanto -i .babel -o tmp -t cjs -s

echo "mocha..."
mocha

#!/bin/sh
set -e

dart pub upgrade packages
dart analyze lib
dart test
dart format --set-exit-if-changed lib test

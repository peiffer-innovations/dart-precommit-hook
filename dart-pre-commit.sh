#!/bin/sh
set -e

pub upgrade packages
dart analyze lib
dart test
dart format --set-exit-if-changed lib test

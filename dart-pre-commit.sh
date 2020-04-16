#!/bin/sh
set -e

pub upgrade packages
dartanalyzer lib
pub run test test
dartfmt --set-exit-if-changed -w lib test

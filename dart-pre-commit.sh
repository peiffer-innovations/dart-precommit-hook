#!/bin/sh
set -e

pub upgrade packages
dartanalyzer lib
pub run test test
dartfmt -w lib test

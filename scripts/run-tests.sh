#!/usr/bin/env bash
set -e
npx hardhat compile
npx hardhat test

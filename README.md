# NFT Contract (ERC-721) — Hardhat + Docker

## What this repo provides
- `contracts/NftCollection.sol`: ERC-721 NFT collection implementing:
  - owner-only minting, max supply enforcement
  - pausable minting/transfers
  - baseURI tokenURI model
  - burning that updates totalSupply
- Tests in `test/NftCollection.test.js` that cover positive paths and edge cases
- Dockerfile to run tests reproducibly

## Requirements
- Docker (to run containerized tests)
- Or Node.js + npm to run locally

## Run tests locally (no Docker)
```bash
npm install
npx hardhat compile
npx hardhat test

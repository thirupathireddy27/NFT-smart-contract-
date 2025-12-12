NFT Contract (ERC-721) — Hardhat + Docker

This repository contains a fully functional ERC-721 NFT smart contract implemented using Solidity and Hardhat, with a comprehensive automated test suite and Dockerized environment for reproducible testing.

The project demonstrates secure NFT minting, transfers, approvals, metadata handling, access control, pausing, burning, and gas-efficient operations.

Project Structure

NFT-CONTRACT/
│
├── contracts/
│   └── NftCollection.sol        // ERC-721 NFT smart contract
│
├── test/
│   └── NftCollection.test.js    // Automated test suite
│
├── scripts/                     // Deployment or helper scripts (optional)
│
├── Dockerfile                   // Docker configuration for build & tests
├── .dockerignore                // Docker ignore rules
├── .gitignore                   // Git ignore rules
├── hardhat.config.js            // Hardhat configuration
├── package.json                 // Project dependencies
├── package-lock.json            // Dependency lock file
└── README.md                    // Project documentation

✨ What This Project Provides

ERC-721 compliant NFT smart contract

Owner-only minting with max supply enforcement

Safe transfers with approval and operator mechanics

Pausable minting and transfers

Burn functionality that updates total supply

Base URI + tokenId metadata model

Clear revert behavior for invalid operations

Automated tests covering normal and edge cases

Dockerized setup for clean, reproducible testing


⚙️ Technologies & Tools Used

Solidity (0.8.17)

Hardhat (Ethereum development framework)

Ethers.js (v5)

Mocha & Chai (testing)

Node.js (20.x)

Docker

Git & GitHub

VS Code

🧠 Smart Contract Overview

The NftCollection.sol contract implements core ERC-721 behavior with additional safety and control features:

Tracks ownership, balances, approvals, and operators

Prevents duplicate token minting

Enforces maximum supply

Restricts privileged actions to an admin account

Emits all required ERC-721 events

Ensures atomic and validated state updates

🧪 Testing Strategy

The automated test suite verifies:

Initial contract configuration

Authorized vs unauthorized minting

Duplicate token protection

Max supply enforcement

Transfers and ownership updates

Approval and operator approval logic

Reverts for invalid operations

Pausing and unpausing behavior

Burn functionality

Gas usage for common operations

All tests must pass for the contract to be considered valid

🐳 Running the Project Using Docker (Recommended)

The project is fully containerized to ensure consistent and reproducible execution without requiring local setup.

1️⃣ Build the Docker Image
docker build -t nft-contract .


This command:

Uses a Node.js 20 base image

Installs all dependencies

Compiles the smart contract

Prepares the testing environment

2️⃣ Run the Test Suite
docker run --rm nft-contract


Expected output:

12 passing


This confirms all tests executed successfully inside the container.

💻 Running Tests Locally (Without Docker)

If Docker is not available, tests can be run locally:

npm install --legacy-peer-deps
npx hardhat compile
npx hardhat test


📦 Dockerfile Overview

The Dockerfile performs the following steps:

Uses node:20-bullseye as the base image

Installs project dependencies

Copies source files

Compiles the smart contract

Runs the test suite by default

This ensures a clean, isolated environment for evaluation.

📌 Assumptions

The project is evaluated using Docker

No external RPC or network access is required

Auto-generated folders (node_modules, artifacts, cache) are excluded from Git

Ethers.js v5 is used for compatibility with Hardhat plugins

🚀 Future Improvements

If the project scales further, possible enhancements include:

Batch minting for gas efficiency

Whitelist / presale minting

Paid minting with ETH

Metadata reveal system

Role-based access control

Frontend minting DApp

Subgraph indexing for large collections
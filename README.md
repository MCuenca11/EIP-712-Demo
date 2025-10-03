# EIP-712 Demo Project

This project demonstrates the implementation of **EIP-712 Typed Data Encoding and Signature Verification**. It showcases how to encode typed data, generate signatures, and verify them both off-chain and on-chain. Additionally, it includes an example of verifying the signature in a relayed function on a smart contract.

## Features

- **EIP-712 Typed Data Encoding**: Encode structured data according to the EIP-712 standard.
- **Signature Generation**: Generate cryptographic signatures for the encoded data.
- **On-Chain Verification**: Verify the signature in a smart contract.
- **Relayed Function Execution**: Demonstrates how a relayed function can validate the signature before executing logic.

## Prerequisites

To run this project, ensure you have the following installed:

- [Node.js](https://nodejs.org/) (v16 or later)
- [Hardhat](https://hardhat.org/) (for smart contract development)
- [Java](https://www.oracle.com/java/) (for backend integration, if applicable)
- A package manager like `npm` or `yarn`

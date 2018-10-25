# Blockchain Lunch & Learn

A quick introduction to blockchain development using Ethereum.

## Tools / Dependencies

* VSCode - [Code Editor](https://code.visualstudio.com/)
* Remix - [Solidity Online Editor](https://remix.ethereum.org/)
* MetaMask - [Identity Browser Plugin](https://metamask.io/)
* ipfs - [Distributed Filesystem](https://ipfs.io/)
* Ganache - [Local Ethereum](https://truffleframework.com/ganache)
* Node.js - [JavaScript Runtime](https://nodejs.org/en/docs/)
* npm - [Node Package Manager](https://docs.npmjs.com/)

## Libraries

* Open Zeppelin - [Smart Contract Library](https://github.com/OpenZeppelin/openzeppelin-solidity)
* Typescript - [TypeScript Compiler](https://www.typescriptlang.org/)

## Learning Resources

* Solidity - [Documentation](https://solidity.readthedocs.io/en/latest/)
* Learn Solidity in Y minutes - [Quick Reference](https://learnxinyminutes.com/docs/solidity/)
* CryptoZombies - [Learn to Code Ethereum DApps](https://cryptozombies.io/)
* Ethviewer - [Real time monitor](http://www.ethviewer.live/)

## Download Source Code

To get the source code and install app dependencies, just type:

```bash
git clone git@github.com:oudsteyn/blockchain-lunch-n-learn.git
cd ./blockchain-lunch-n-learn
```

## Agenda
* Introduction
  * Focus will be on Ethereum development
  * Skills background of the room
    * Javscript/Promises
    * Blockchain
  * My blockchain development journey
  * The ideals of blockchain emerged during the financial crisis
    * Decentralization
    * Transparency
    * Trustless
* Smart Contracts
  * Supply Contract Demo
  * Ethereum virtual machine
    * Deployed contracts can't be modified
    * Data Types - uniform sizing
  * Account Types
    * Externally Owned Accounts (EOAs)
      * Can initate transactions
      * Controlled by private keys
      * No associated code
    * Contract
      * Has associated code
  * ERC20 Token Demo
    * ERC721 - NFT
* Application Development
  * What is a dApp?
  
  * State Database
  * Using Geth
    * What is the genesis block
    * Initialize a blockchain - `geth --datadir chaindata init genesis.json`
    * Starting the blockchain with a miner - `geth --datadir chaindata --networkid 7310 --mine --minerthreads=1 --etherbase=0x7df9a875a174b3bc565e6424a0050ebc1b2d1d82`
  * Compiling with solc?
    * Compiling a smart contract using solc - `solc -o contracts/build --bin --abi contracts/SupplyContract.sol`
    * What is the ABI and why do I need it?
  * [Deploying A Smart Contract, The Hard Way](https://medium.com/@gus_tavo_guim/deploying-a-smart-contract-the-hard-way-8aae778d4f2a)
  * Truffle Suite
    * A lot of Ethereum examples are written using react
    * Easy Local Blockchains
      * Ganache
      * ganache-cli
  * Web3
    * Client library overview
    * Interfaces with blockchain using JSON-RPC
    `curl --data '{"method":"web3_clientVersion","params":[],"id":1,"jsonrpc":"2.0"}' -H "Content-Type: application/json" -X POST localhost:7545`
  * Starter apps with [Boxes](https://truffleframework.com/boxes)
    * Demo with [webpack](https://truffleframework.com/boxes/webpack)
  * Gas 
    * Miners prioritize transactions with a higher gas price
    * How is it calculated. `cost = gasUsed * gasPrice`
    * Calculate gas used [EVM OPCODES COSTS](https://docs.google.com/spreadsheets/d/1m89CVujrQe5LAFJ8-YAUCcNK950dUzMQPMJBxRtGCqs/edit#gid=0)
    * why are estimates wrong? [stackexchange](https://ethereum.stackexchange.com/questions/266/what-are-the-limitations-to-estimategas-and-when-would-its-estimate-be-considera)
  * Always get your contracts audited
  * Architecture Patterns
    * Based on ideals
      * Client talks directly to blockchain - MetaMask
      * Client hosted on a distributed filesystem - IPFS
    * Most applications are developed using traditional application architecture patterns 
* Data considerations to make before storing data on chain
  * higher amount of data leads to higher gas costs
  * data can never be removed from the blockchain history - right to be forgotten
  * Data migrations for new versions of a contract
* Future direction of smart contract development - [WASM](https://www.parity.io/wasm-smart-contract-development/)
  * You'll be able to take use application code on the blockchain


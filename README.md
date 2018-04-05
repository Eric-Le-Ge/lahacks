![alt text](https://raw.githubusercontent.com/Eric-Le-Ge/lahacks/master/DogeFlow.png)

## Introduction
Many of our friends at UC Berkeley own a pet, either adopted recently or raised for years. During spring break, everyone has made vacation plan, which gives the pet owners a hard time to figure out what to do with their left-home pet, because they can barely find someone who stays home and willing to look after their pet while they are away. Inspired by the situation, our team came up with the idea of building a decentralized application that helps connect the pet owners in need and the people who are willing to help them out for a quick one-time income (or just for fun). 

## What it does

Our project is a Ethereum based web application for the entertainment of pet industry. The goal of our project is to efficiently help pet owners locate a trustworthy babysitter of their beloved pet when they are about to be go on a distant trip. A pet owner looking for a temporary pet care taker can post relevant information of the pet on the website, e.g. a bulldog, Persian cat, or a Havana rabbit, while the people interested in responding can quickly make contact and get a one-time payment. The use of smart contracts in our project eliminates the need to rely on any third party medium, thereby allowing our website to be one hundred percent trustless and efficient. On the other hand, the immutability of the Ethereum blockchain prevents fraud through ensuring traceability in all transaction histories.


## How we built it

Building a Dapp: back-end smart contract + front-end construction

back-end:

1.	we used Truffle box to create a Truffle project which generated a default Truffle directory structure.
2.	we created the core files in the contracts/ directory where we constructed the essential smart contracts that outline the operations of how pet owners interact with potential pet care takers, using Solidity.
3.	we used Ganache to generate a personal blockchain for our Dapp
4.	After successfully compiling the contracts, we migrated them to the blockchain.
5.	We ran a couple of tests on the contracts. 

front-end:
1.	a home page with a start button
2.	by clicking “start”, you enter the main page with a list displaying all the pets looking for a “babysitter”
3.	by clicking “add”, you enter the page where you can make a new post as a pet owner looking for help. 
4.	by clicking any pet, you enter the page where you can interact with the pet’s owner to make  further arrangements.

we used web3 to connect the front-end construction with back-end logic




# Dependencies
# Frontend

This project was generated with [Angular CLI](https://github.com/angular/angular-cli) version 1.7.3.

## Development server

Run `ng serve` for a dev server. Navigate to `http://localhost:4200/`. The app will automatically reload if you change any of the source files.

## Code scaffolding

Run `ng generate component component-name` to generate a new component. You can also use `ng generate directive|pipe|service|class|guard|interface|enum|module`.

## Build

Run `ng build` to build the project. The build artifacts will be stored in the `dist/` directory. Use the `-prod` flag for a production build.

## Running unit tests

Run `ng test` to execute the unit tests via [Karma](https://karma-runner.github.io).

## Running end-to-end tests

Run `ng e2e` to execute the end-to-end tests via [Protractor](http://www.protractortest.org/).

## Environment Set Up 
## Solidity (smart contract language) 
Documentation: https://solidity.readthedocs.io/en/v0.4.21/  
Solidity is a contract-oriented, high-level language for implementing smart contracts. It was influenced by C++, Python and JavaScript and is designed to target the Ethereum Virtual Machine (EVM). 
Solidity is statically typed, supports inheritance, libraries and complex user-defined types among other features. 
As you will see, it is possible to create contracts for voting, crowdfunding, blind auctions, multisignature wallets and more. 

## Truffle (compiler/migration/testing) 
Documentation: http://truffleframework.com/docs/  
Blockchain@Berkeley Video: https://www.youtube.com/watch?v=QmsQx3yQL8&list=PLSONl1AVlZNUzp71_H1kb87PvIh8kIZU9&index=6  
Truffle is a world class development environment, testing framework and asset pipeline for Ethereum, aiming to make life as an Ethereum developer easier. With Truffle, you get:  Built-in smart contract compilation, linking, deployment and binary management.  Automated contract testing for rapid development. 
 Scriptable, extensible deployment & migrations framework.  Network management for deploying to any number of public & private networks.  Package management with EthPM & NPM, using the ERC190 standard.  Interactive console for direct contract communication.  Configurable build pipeline with support for tight integration.  External script runner that executes scripts within a Truffle environment. 
 
Installation:  
$ npm install -g truffle 
NPM Installation:  https://nodejs.org/en/  

## Remix & IDEs 
Solidity supports a wide range of IDEs: 
 Remix 
Browser-based IDE with integrated compiler and Solidity runtime environment without serverside components.  
 IntelliJ IDEA plugin 
Solidity plugin for IntelliJ IDEA (and all other JetBrains IDEs) 
 Visual Studio Extension 
Solidity plugin for Microsoft Visual Studio that includes the Solidity compiler. 
 Package for SublimeText — Solidity language syntax 
Solidity syntax highlighting for SublimeText editor. 
For more ides see solidity documentation. 

## Ganache (local/personal blockchain) 
We recommend Ganache, a personal blockchain for Ethereum development that runs on your desktop. Part of the Truffle Suite, Ganache simplifies dapp development by placing your contracts and transactions front and center. Using Ganache you can quickly see how your application affects the blockchain, and introspect details like your accounts, balances, contract creations and gas costs. You can also fine tune Ganache's advanced mining controls to better suit your needs. 
Installation:   
command-line installation: npm install -g ganache-cli  
Or through this website: http://truffleframework.com/ganache/  
Documentation: currently unavailable 
Usage: see blockchain@berkeley video (https://www.youtube.com/watch?v=QmsQx3yQL8&list=PLSONl1AVlZNUzp71_H1kb87PvIh8kIZU9&index=6 ) 

## Web3.eth & Meta-mask (Client/UI) 
The web3-eth package allows you to interact with an Ethereum blockchain and Ethereum smart contracts. Web3.eth documentation: https://web3js.readthedocs.io/en/1.0/web3-eth.html  
Installation:  
$ npm install web3 
Metamask official site & Installation: https://metamask.io/  
Currently supports Chrome/Firefox 
MetaMask is a bridge that allows you to visit the distributed web of tomorrow in your browser today. It allows you to run Ethereum dApps right in your browser without running a full Ethereum node. 
Blockchain@Berkeley Video: https://www.youtube.com/watch?v=WB5b8IzhsKY&list=PLSONl1AVlZNUzp71_H1kb87PvIh8kIZ U9&index=9  

## Further help

To get more help on the Angular CLI use `ng help` or go check out the [Angular CLI README](https://github.com/angular/angular-cli/blob/master/README.md).

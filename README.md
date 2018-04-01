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

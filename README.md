# Transaction contract in Solidity
This Solidity smart contract allows users to manage simple transactions, including deposits, withdrawals, and transfers between accounts. The contract is intended for educational purposes and demonstrates basic concepts such as ownership, balance management, and transaction validation.


## Install

1. Install [Node.js](https://nodejs.org)

   Download and install from the official site.

2. Install [Truffle](https://github.com/trufflesuite/truffle)

   ```bash
   npm install -g truffle
   ```


## Initialize

1. Initialize Truffle in your project folder

   ```bash
   truffle init
   ```

   After initialization, you will find two folders called `contracts` and `migrations`. Contracts go in the `contracts` folder while contract deployment settings go in `migrations`.
2. **Features**
* Owner Assignment: The contract assigns the creator of the contract as the owner.
* Deposit: Users can deposit funds into their account.
* Withdraw: Users can withdraw funds from their account, provided they have sufficient balance.
* Transfer: Users can transfer funds to another account.

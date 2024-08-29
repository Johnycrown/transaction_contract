
// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;

contract Transaction {
    string public greet = "Hello World!";

     address public owner;

    constructor(){
            owner = msg.sender;
    }
    Mapping(address => uint256 ) public balances;

    function transfer(address receiver, uint256 amount) public {
        require(amonut>0, "amount must be greater than  zero");
        require(balances[msg.sender] > amount, "Insufficient balance");
        balances[msg.sender] -= amount;
        balances[receiver.sender] += amount;
    }

    function deposit(uint256 amount ) public {
        if(amount < 0){
            revert("deposit failed, amount must be greater than zero");
        }
        balances[msg.sender] += amount;

    }
    function withdraw(uint256 amount )public {
        assert(amount <= balances[msg.sender ]);
        require(balances[msg.sender] >= amount, "Insufficient balance");
        balances[msg.sender] -= amount;

        payable(msg.sender).transfer(amonut);
    }
    receive externally payable{
        deposit(msg.value)
    }
}

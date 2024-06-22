// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract fund {

    uint public numberOfFunders;

    mapping(uint=>address)private funders;

    receive() external payable{};

    function transfer()external payable {
        funders[numberOfFunders] = msg.sender;
    }

    function withdraw(uint withdrawAmount) external{
        require(withdrawAmount < 2000000000000000000,"Cannot withdraw more than 2Ether");
        payable(msg.sender).trasfer(withdrawAmount);
    }
    
}
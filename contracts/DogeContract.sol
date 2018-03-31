pragma solidity ^0.4.17;

contract DogeContract{
address public owner;
address public contracter;
bytes32 public name;
bytes32 public description;
uint public phase;
uint public startTime;
uint public endTime;
uint public bounty;
uint public deposit;
uint public channel;
uint public timeout;

function DogeContract(bytes32 _name, bytes32 _description, uint _startTime, uint _endTime, uint _bounty, uint _deposit) public{
owner = msg.sender;
name = _name;
description = _description;
startTime = _startTime;
endTime = _endTime;
channel = _bounty;
bounty = _bounty;
deposit = _deposit;
timeout =  (_endTime - _startTime)/2;
phase = 0;
}

function Accept(address _contracter) public returns (bool){
if (phase == 0 && _contracter!=owner){
contracter = _contracter;
phase = 1;
return true;
}
return false;
}


function ConfirmB() public returns (bool){
if (phase != 1) {
return false;
}
phase = 2;
return true;
}

function ConfirmA() public returns (bool){
if (phase != 2) {
return false;
}
phase = 3;
return true;
}




}
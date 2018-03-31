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
bool public taken;
bool public terminated;

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
taken =  false;
terminated = false;
}

function Accept(address _contracter) public returns (bool){
if (phase == 0 && _contracter!=owner&& !terminated){
contracter = _contracter;
phase = 1;
taken = true;
return true;
}
return false;
}


function ConfirmB() public returns (bool){
if (phase != 1) {
return false;
}
phase = 2;
channel += deposit;
return true;
}

function ConfirmA() public returns (bool){
if (phase != 2) {
return false;
}
phase = 3;
return true;
}

function Cancel() public returns (bool){
if (!taken && !terminated){
terminated= true;
channel = 0;
return true;
}
return false;
}

function TimeOut() public returns (bool){
if (!terminated){
terminated= true;
channel = 0;
return true;
}
return false;
}
}


}
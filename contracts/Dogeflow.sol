pragma solidity ^0.4.17;

import "./DogeContract.sol";

contract DogeFlow {
mapping(address => DogeContract) doggies;
mapping(address => bool) dogged;
mapping(address => uint) balance;
mapping(address => address) contracts;
mapping(address => bool) contracted;
address owner;

function DogeFlow() public {
owner = msg.sender;
}

function AddMoney() payable returns (bool){
balance[msg.sender] += msg.value;
return true;
}

function ClaimAll() public returns (bool){
if (balance[msg.sender] == 0) throw;
uint amount  = balance[msg.sender];
msg.sender.transfer(amount);
return true;
}

function WithdrawMoney() payable returns (bool){
uint amount = msg.value;
if (balance[msg.sender] >= msg.value){
balance[msg.sender] -= amount;
msg.sender.transfer(amount);
return true;
}
return false;
}

function Announce(bytes32 _name, bytes32 _description, uint _startTime, uint _endTime, uint _bounty, uint _deposit) public returns (bool){
if (balance[msg.sender] < _bounty){
return false;
}
balance[msg.sender]-=_bounty;
if (!dogged[msg.sender]){
dogged[msg.sender] = true;
DogeContract _contract = new DogeContract(_name, _description, _startTime, _endTime, _bounty, _deposit);
doggies[msg.sender] = _contract;
return true;
}
if (doggies[msg.sender].GetTerminated()){
_contract = new DogeContract(_name, _description, _startTime, _endTime, _bounty, _deposit);
doggies[msg.sender] = _contract;
return true;
}
return false;
}

function Accept(address _owner) public returns (bool){
if (!dogged[_owner] || doggies[_owner].GetTerminated == true){
return false;
}
if (!contracted[msg.sender]){

if (doggies[_owner].Accept(msg.sender)){
contracted[msg.sender] = true;
}
return true;
}
return doggies[_owner].Accept(msg.sender);
}


function ConfirmB() public returns (bool){
require (contracted[msg.sender]);
address _owner = contracts[msg.sender];
DogeContract _contract = doggies[msg.sender];
if (!dogged[_owner]||_contract.GetTerminated()){
return false;
}
if (msg.sender != _contract.contracter || balances[msg.sender] < _contract.deposit){
return false;
}
balances[msg.sender] -= _contract.deposit;
if (!contract.ConfirmB()){
balances[msg.sender] += _contract.deposit;
}
return true;
}

function ConfirmA() public returns (bool){
require(dogged[msg.sender]);
if (contract.ConfirmA()){
balances[msg.contracter] += _contract.deposit;
return true;
}
return false;
}

function Cancel() public returns (bool){
require(dogged[msg.sender]);
uint amount = doggies[msg.sender].channel;
if (doggies[msg.sender].Cancel()){
balances[msg.sender] += amount;
return true;
}
return false;
}

function TimeOut() public returns (bool) {
require(dogged[msg.sender]);
uint currentTime = now;
DogeContract _contract = doggies[msg.sender];
if (now > (_contract.endTime + _contract.timeout)){
return _contract.TimeOut();
}
return false;
}



}

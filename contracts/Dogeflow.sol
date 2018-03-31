pragma solidity ^0.4.17;

import "../contracts/DogeContract.sol";

contract DogeFlow {
mapping(address => DogeContract) doggies;
mapping(address => DogeContract) dogged;
mapping(address => DogeContract) balance;
mapping(address => address) 
address owner;

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
DogeContract _contract = DogeContract(_name, _description, _startTime, _endTime, _bounty, _deposit);
doggies[msg.sender] = _contract;
return true;
}
if (doggies[msg.sender].GetTerminated()){
DogeContract _contract = DogeContract(_name, _description, _startTime, _endTime, _bounty, _deposit);
doggies[msg.sender] = _contract;
return true;
}
return false;

}

function ConfirmB(){
if (!dogged[msg.sender])
DogeContract _contract = 




}









function adopt(uint petId) public returns (uint) {
  require(petId >= 0 && petId <= 15);

  adopters[petId] = msg.sender;

  return petId;
}
// Retrieving the adopters
function getAdopters() public view returns (address[16]) {
 // return adopters;
}
}
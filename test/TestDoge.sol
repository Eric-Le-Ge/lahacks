pragma solidity ^0.4.17;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Dogeflow.sol";

contract TestDoge {
uint public initialBalance = 30 ether;



DogeFlow dogeBanker = DogeFlow(DeployedAddresses.DogeFlow());

uint a= 4;
uint b = 1;
address t = DeployedAddresses;
 function testInitialBalanceUsingDeployedContract() public {
    dogeBanker._AddMoney(5);
	
	dogeBanker.Announce("dog","lol",1,4,1,5);
	dogeBanker.Accept(t);
	b = dogeBanker.GetBalance();
	Assert.equal(a,b,"");
	}



}

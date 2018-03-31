var DogeFlow = artifacts.require("DogeFlow");
var DogeContract = artifacts.require("DogeContract");


module.exports = function(deployer) {
  deployer.deploy(DogeFlow);
  deployer.deploy(DogeContract);
};
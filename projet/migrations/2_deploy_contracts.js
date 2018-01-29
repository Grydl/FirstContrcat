var FirstContract = artifacts.require("FirstContract");

module.exports = function(deployer) {
 deployer.deploy(FirstContract);
};

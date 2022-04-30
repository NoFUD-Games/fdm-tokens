const FDM = artifacts.require("FDM");
const {deployProxy} = require("@openzeppelin/truffle-upgrades");

module.exports = async function(deployer) {
	await deployProxy(FDM, [], {deployer});
}

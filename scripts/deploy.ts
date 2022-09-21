import { ethers } from "hardhat";

async function main() {

  const Contract = await ethers.getContractFactory("ReceiveFallback");
  const contractInstance = await Contract.deploy();

  await contractInstance.deployed();

  console.log(`Smart Contract deployed to ${contractInstance.address}`);
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});

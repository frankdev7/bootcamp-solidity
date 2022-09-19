import { ethers } from "hardhat";

async function main() {

  const DataStructure = await ethers.getContractFactory("DataStructure");
  const dataStructure = await DataStructure.deploy();

  await dataStructure.deployed();

  console.log(`DataStructure deployed to ${dataStructure.address}`);
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});

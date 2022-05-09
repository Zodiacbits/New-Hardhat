const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("Result", function () {
  it("Should return the new result once total value derived", async function () {
    const Result = await ethers.getContractFactory("Result");
    const result = await result.deploy("");
    await result.deployed();

    expect(await resultant.result()).to.equal("uint256");

    const setResultTx = await resultant.setResult("uint256");

    // wait until the transaction is mined
    await setResultTx.wait();

    expect(await resultant.result()).to.equal("uint256");
  });
});
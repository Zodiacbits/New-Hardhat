const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("Resultant", function () {
  it("Should return the new result once total value derived", async function () {
    const Result = await ethers.getContractFactory("Resultant");
    const result = await Result.deploy(0);
    await result.deployed();

    let currentResult = await result.getResult();
    console.log( "zodiacs current result:", currentResult);

    await result.addNumbers( 5, 5);

    currentResult = await result.getResult();
    console.log( "zodiacs current result:", currentResult);

  });
});
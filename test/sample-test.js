const { assert } = require("chai");
const { ethers } = require("hardhat");
const fs = require('fs');
const path = require("path");

const contents = fs.readFileSync(path.join(__dirname, "proof")).toString();

const args = JSON.parse(`[${contents}]`);

describe("factor", function () {
  it("should verify the proof", async function () {
    const Verifier = await ethers.getContractFactory("Verifier");
    const verifier = await Verifier.deploy();
    await verifier.deployed();

    assert( await verifier.verifyProof(...args) );
  });
});

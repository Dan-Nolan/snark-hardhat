# Hardhat ZK Snark

This is a simple demonstration of ZK Snark Circuits using [Circom](https://docs.circom.io/) and [SnarkJS](https://github.com/iden3/snarkjs). It simplifies [this great example](https://github.com/iden3/circom/blob/master/TUTORIAL.md) into a few easy steps with Hardhat.

To begin with you will need to install these two libraries globally:

```
npm install -g circom
npm install -g snarkjs
```

Next, you can generate the solidity verifier contract and the proof by running:

```
npm run generate
```

This will create a new contract in the `contracts/` folder called `verifier.sol` and it will also create a `proof` file in the `test/` folder.

Finally, to test that you can verify your proof of the circuit, you can run:

```
npx hardhat test
```

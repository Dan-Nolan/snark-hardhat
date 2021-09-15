circom circuit.circom --r1cs --wasm --sym
snarkjs zkey new circuit.r1cs powersOfTau28_hez_final_10.ptau circuit_0000.zkey
snarkjs zkey contribute circuit_0000.zkey circuit_final.zkey
snarkjs zkey export verificationkey circuit_final.zkey verification_key.json
snarkjs wtns calculate circuit.wasm input.json witness.wtns
snarkjs groth16 prove circuit_final.zkey witness.wtns proof.json public.json
snarkjs zkey export solidityverifier circuit_final.zkey ../contracts/verifier.sol
snarkjs zkey export soliditycalldata public.json proof.json > ../test/proof

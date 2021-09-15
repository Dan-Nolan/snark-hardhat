template Multiplier() {
    signal private input a;
    signal private input b;
    signal private input c;
    signal output d;

    d <== a*b + c;
}

component main = Multiplier();

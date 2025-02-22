```solidity
function add(uint a, uint b) public pure returns (uint) {
    return a + b;
}

function bug() public pure returns (uint) {
    uint x = 10;
    uint y = 5;
    uint z = add(x, y); // Correct addition

    uint p = 10;
    uint q = 5;
    assembly {
        let result := add(p, q) // Incorrect, uses assembly's add which does different operation
        // ...
    }
    return z; // Return the correct addition
}
```

//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract Greeter {
    // The keyword "private" means that
    // these variables can only be changed
    // by calling the function from within this contract.
    string private greeting;

    // The special keyword "constructor" is
    // used to run initialization code. The code
    // inside the constructor will run only when
    // the contract is created.
    constructor(string memory _greeting) {
        // The code here will run only once.
        console.log("Deploying a Greeter with greeting:", _greeting);
        greeting = _greeting;
    }

    // The "public" keyword means that this
    // function can be called from anywhere.
    // The "view" keyword means that this
    // function does not change the state of the contract.
    function greet() public view returns (string memory) {
        return greeting;
    }

    // This function changes the state of the contract.
    // This means that other people using this contract
    // will see the new value the next time they call
    // "greet".
    function setGreeting(string memory _greeting) public {
        console.log("Changing greeting from '%s' to '%s'", greeting, _greeting);
        greeting = _greeting;
    }
}


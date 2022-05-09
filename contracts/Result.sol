//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.4;

import "hardhat/console.sol";

contract Result {
    string private result;

    constructor(string memory _result) {
        console.log("YAAY, my result is: ", result);
        result = _result;
    }

    function addNumbers(uint256 _x, uint256 _y) public view {
        _x = 5;
        _y = 5;
        uint256 result = _x + _y;
        console.log("YAAY, my result is: ", result);
    }

}

//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.4;

import "hardhat/console.sol";

contract Resultant {
    uint256 private result;

    constructor(uint256 _result) {
        result = _result;
        console.log("YAAY, my result is: ", result);
    }

    function getResult() external view returns (uint256) {
        return (result);
    }

    function addNumbers(uint256 _x, uint256 _y) external returns (uint256) {
        _x = 5;
        _y = 5;
        result = _x + _y;
        console.log("YAAY, my result is: ", result);
        return (result);
    }

}

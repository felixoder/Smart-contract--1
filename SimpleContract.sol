// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract SimpleContract {
    uint256 myPrediction;

    function storeValue(uint256 _myPrediction) public {
        myPrediction = _myPrediction;
    }

    function getPrediction() public view returns (uint256) {
        return myPrediction;
    }
}
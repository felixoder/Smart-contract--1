// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

contract zkSync {
    uint256 myNumber;

    function store(uint256 _myNumber) public {
        myNumber = _myNumber;
    }
    
    function getNumber() public view returns(uint256) {
        return myNumber;
    }

   function increment() public view returns(uint256) {
    return myNumber+1;
   }
   
     
    
}

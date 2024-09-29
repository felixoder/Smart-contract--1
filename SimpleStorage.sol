// SPDX-License-Identifier: MIT

pragma solidity 0.8.18; //The versions of solidity

contract SimpleStorage {
    // // Basic Types: boolean, uint, int, address, bytes
    // bool hasmyFavouriteNumber = false; // Boolean
    // uint256 myFavouriteNumber = 88; // unsigned integer [by default 256]
    // int256 myNumber = -88; // signed integer values
    // string myFavouriteNumberInText = "88"; // string values "...."
    // address myAddress = 0x71e58DBC50BE7C0F5c2d7f044e4f4B47350347d8;
    // bytes32 favouriteBytes32 = "cat"; // 0x2asf34 [bytes32 not equals to bytes]
    
    // uint256 myFavouriteNumber; // default 0; boolean false
    // uint myFavouriteNumber; is basically uint256 internal myFavouriteNumber; 

    uint256 myFavouriteNumber; // visibility:  public private external internal 
    
    // uint256[] listOfNumbers; // Array of numbers

    // structure datatype
    struct Person{
        uint256 favouriteNumber;
        string name;
    }

    // Person public myFriend = Person({favouriteNumber: 7, name: "Debayan"});

    
    Person[] public listOfPeople; // []

    mapping( string => uint256) public nameToFavouriteNumber;



   function store(uint256 _favouriteNumber) public{
    myFavouriteNumber = _favouriteNumber;

   }
    // view = gonna read the state from the blockchain we cannot modify stuffs here
    // pure = opposite of ^
   function retrieve() public view returns(uint256){
    return myFavouriteNumber;
   }

   function addPerson(string memory _name, uint256 _favouriteNumber) public  {
    // Person memory newPerson = Person (_favouriteNumber, name)
    // listofPeople.push(newPerson)

    listOfPeople.push(Person(_favouriteNumber, _name));
    nameToFavouriteNumber[_name] = _favouriteNumber;
    
   }

  

   
}

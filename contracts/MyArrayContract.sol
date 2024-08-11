// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <= 0.9.0;

contract MyArrayContract {
    uint[] myArray;

    function addToMyArray (uint _value) public {
        myArray.push(_value);
    }

    function getMyArrayLength() public view returns(uint) {
        return myArray.length;
    }

    function getMyArraValue(uint _index) public view returns (uint) {
        return myArray[_index];
    }
}
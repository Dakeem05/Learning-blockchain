// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <= 0.9.0;

contract Variable {
    string public text = "Hello";
    uint public num = 123;

    function getTextAndNum() public view returns(string memory, uint){
        return (text, num);
    }

    function doSomething() public view returns(uint, uint, address){
        uint i = 456;

        uint timestamp = block.timestamp;
        
        address sender = msg.sender;

        return (i, timestamp, sender);
    }
}
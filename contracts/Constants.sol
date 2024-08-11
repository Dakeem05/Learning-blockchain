// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.2 <= 0.9.0;

contract Constants {
    address public constant MY_ADDRESS = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    uint public constant MY_UINT = 123;

    function showConstants() public pure returns (address, uint){
        return (MY_ADDRESS, MY_UINT);
    }
}
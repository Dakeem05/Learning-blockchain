// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <= 0.9.0;

contract IfElse {
    function foo(uint _x) public pure returns(uint) {
        if (_x < 10) {
            return 0;
        } else if (_x < 20) {
            return 1;
        } else {
            return 2;
        }
    }

    function tenary(uint _x) public pure returns(uint) {
        return _x < 10 ? 0 : _x < 20 ? 1 : 2;
    }
}
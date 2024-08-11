// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <= 0.9.0;

contract Error {
    uint public num = 9;

    error Insufficientfee(uint fee);

    function testRequire(uint _i) public pure returns(uint) {
        require(_i > 10, "Input must be greater than 10");
        return _i * 2;
    }

    function testRevert(uint _i) public pure returns(uint) {
        if(_i <= 10){
            revert("Input must be greater than 10");
        }
        return _i * 2;
    }

    function testAssert() public view{
        assert(num == 0);
    }

    function testCustomError(uint _i) public pure returns(uint) {
        if(_i < 10) {
            revert Insufficientfee({fee: _i});
        }
        return _i * 2;
    }
 }
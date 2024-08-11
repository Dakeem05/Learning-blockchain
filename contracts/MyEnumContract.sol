// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <= 0.9.0;

contract MyEnumContract {
    enum Status {
        Pending,
        Approved,
        Rejected
    }

    Status public currentStatus;

    function setStatus(uint8 _status) public {
        require(_status >= 0 && _status <= 2, "Invalid Status");
        currentStatus = Status(_status);
    }

    function getStatus() public view returns(string memory) {
        if (currentStatus == Status.Pending) {
            return "Pending";
        } else if (currentStatus == Status.Approved) {
            return "Approved";
        } else {
            return "Rejected";
        }
    }
}
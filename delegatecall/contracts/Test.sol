// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

contract Test {
    uint256 public num;

    function setNum(uint256 _num) external payable {
        num = _num + 1;
    }
}

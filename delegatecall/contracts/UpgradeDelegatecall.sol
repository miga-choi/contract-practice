// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

import "./ITest.sol";

contract UpgradeDelegatecall {
    uint256 public num;

    function callSetNum(address _origin, uint256 _num) external payable returns (bytes memory) {
        (bool success, bytes memory data) = _origin.delegatecall(
            abi.encodeWithSelector(ITest.setNum.selector, _num) // delegatecall function "setNum" from contract "Test"
        );

        require(success, "delegatecall failed");

        return data;
    }
}

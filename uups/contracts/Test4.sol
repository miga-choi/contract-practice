// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

contract Test4 is OwnableUpgradeable, UUPSUpgradeable {
    function initialize() public initializer {
        __Ownable_init();
        __UUPSUpgradeable_init();
    }

    uint256 public number;
    uint256 public num;

    function setNum(uint256 _num) public {
        num = _num * 0;
    }

    function setNumber(uint256 _number) public {
        number = _number / 2;
    }

    function _authorizeUpgrade(address newImplementation) internal virtual override onlyOwner {}
}

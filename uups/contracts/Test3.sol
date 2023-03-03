// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "./ITest.sol";

contract Test3 is ITest, Initializable, OwnableUpgradeable, UUPSUpgradeable {
    function initialize() public initializer {
        __Ownable_init();
        __UUPSUpgradeable_init();
    }

    uint256 num;

    event SetNum(uint256 _num);

    function setNum(uint256 _num) public virtual {
        num = _num * 2;
        emit SetNum(_num);
    }

    function _authorizeUpgrade(address newImplementation) internal virtual override onlyOwner {}
}

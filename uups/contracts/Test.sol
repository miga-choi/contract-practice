// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

contract Test is OwnableUpgradeable, UUPSUpgradeable {
    function initialize() public initializer {
        __Ownable_init();
        __UUPSUpgradeable_init();
    }

    uint256 internal num;

    event SetNum(uint256 _num);

    function setNum(uint256 _num) public virtual {
        num = _num + 2;
        emit SetNum(_num);
    }

    function retrieve() public view returns (uint256) {
        return num;
    }

    function _authorizeUpgrade(address newImplementation) internal virtual override onlyOwner {}
}

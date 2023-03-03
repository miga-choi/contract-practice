// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

contract Test is Initializable, OwnableUpgradeable {
    function initialize() public initializer {
        __Context_init_unchained();
        __Ownable_init_unchained();
    }

    mapping(string => uint256) private uint256Params;

    event uint256ParamSetted(string indexed _key, uint256 _value);

    function setUint256Param(string memory _key, uint256 _value) external onlyOwner {
        uint256Params[_key] = _value;
        emit uint256ParamSetted(_key, _value);
    }

    function getUint256Param(string memory _key) public view returns (uint256) {
        return uint256Params[_key];
    }
}

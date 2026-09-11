//SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;
import{SimpleStorage} from "./SimpleStorage.sol";

contract AddFiverStorage is SimpleStorage {
    //overrides
    //virtual overrides
    function store(uint256 _newNumber) public override {
        myFavoriteNumber = _newNumber + 5;
    }
}
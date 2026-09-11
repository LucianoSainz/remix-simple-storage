// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;
import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory{

    SimpleStorage[] public listOfSimpleStorageContracts;

    function createSimpleStorageContract() public{
        
        SimpleStorage  newSimpleStorageContract = new SimpleStorage();
        listOfSimpleStorageContracts.push(newSimpleStorageContract);

    }

    function sfStore(uint256 _simpleStorageIndex,  uint256 _newSimpleStorageNumber) public {
        //Address
        //ABI - Aplication Binary Interface 
        listOfSimpleStorageContracts[_simpleStorageIndex].store(_newSimpleStorageNumber);
}

    function sfGet(uint256 simpleStorageIndex) public view returns(uint256){
        //return listOfsimpleStorageContracts[simpleStorageIndex].retrieve();
        return listOfSimpleStorageContracts[simpleStorageIndex].retrieve(); 
    }
}
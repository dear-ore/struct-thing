//SPDX-License-Identifier: MIT
pragma solidity 0.8.13;
contract myStruct {
    struct Person {
        uint age;
        string name;
        address addr;
        uint phone_number;
    }

    Person[] public people;
    mapping(uint => Person) public persontoID;


    function updateMapping(uint nin, uint _age, string memory _name, address _addr, uint phonenumber) public  {
        persontoID[nin].addr = _addr;
        persontoID[nin].phone_number = phonenumber;
        persontoID[nin].age = _age;
        persontoID[nin].name = _name;
    }
    function addToArray(uint _age, string memory _name, address _addr, uint phonenumber) public {
        people.push(Person(_age, _name, _addr, phonenumber));
    }
}
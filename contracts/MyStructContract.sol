// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <= 0.9.0;

contract MyStructContract {
    struct Person {
        string name;
        uint age;
    }

    Person[] people;

    function addPerson(string memory name, uint age) public {
        Person memory newPerson = Person(name, age);
        people.push(newPerson);
    }

    function getPersonName(uint _index) public view returns(string memory) {
        return people[_index].name;
    }

    function getPersonAge(uint _index) public view returns(uint){
        return people[_index].age;
    }

    function getPeopleCount() public view returns(uint){
        return people.length;
    }
}
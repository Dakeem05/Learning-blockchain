// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <= 0.9.0;

contract Todos {
    struct myTodo {
        string text;
        bool completed;
    }

    myTodo[] public todos;

    function create(string calldata _text) public{
        todos.push(myTodo(_text, false));
    }

    function getTodo(uint _index) public view returns(string memory, bool){
        myTodo storage todo = todos[_index];
        return (todo.text, todo.completed);
    }

    function updateText(string calldata _text, uint _index) public {
        myTodo storage todo = todos[_index];
        todo.text = _text;
    }

    function toggleCompleted (uint _index) public {
        myTodo storage todo = todos[_index];
        todo.completed = !todo.completed;
    }
}
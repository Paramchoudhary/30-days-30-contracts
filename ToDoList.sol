
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract ToDoList {
uint public taskcount =0;
struct task{
uint id;
string content;
bool completed;

}
mapping(uint => task) public tasks;
constructor() public {
  createTask("My name is Param");
}

function createtask(string memory _content) public{
  taskcount++;
  tasks[taskcount] = task(taskcount,_content,false);

}


function toggleCompleted(uint _id) public{
Task memory _task = tasks[_id];
_task.completed = !_task.completed;
tasks[_id] = _task;



}

}

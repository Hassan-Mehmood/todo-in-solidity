// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity >=0.5.1 <0.9.0;

contract TodoList {
    uint public taskCount = 0;

    struct Task {
        uint id;
        string title;
        bool status;
    }

    mapping(uint => Task) tasks;

    function addTask(string memory _title) public {
        taskCount++;
        tasks[taskCount] = Task(taskCount, _title, false);
    }

    function editTitle(uint id, string memory _title) public {
        tasks[id].title = _title;
    }

    function editStatus(uint id) public {
        bool currStatus = tasks[id].status;
        tasks[id].status = !currStatus;
    }

    function deleteTask(uint id) public {
        delete tasks[id];
    }
}

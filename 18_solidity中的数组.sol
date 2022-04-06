pragma solidity ^0.4.4;

contract C {
  uint[] data = [1,2,3,4,5];

  function f() constant returns(uint []) {
    return data;
  }
}


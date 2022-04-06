pragma solidity ^0.4.4;

contract Person {
  uint _age;

  function Person(uint age) {
    _age = age;
  }

  function age() constant returns (uint) {
    return _age;
  }

  function f() {
    modify(_age);
  }

  function modify(age) {
    age = 100;
  }
}

pragma solidity ^0.4.4;


contract C {
  mapping (uint => string) students;

  function C() {
    students[0] = 'li';
    students[1] = 'haoran';
  }

  function studentNames() constant returns(string name0 ,string name1) {
    name0 = students[0];
    name1 = students[1];
  }

  // 和上面的代码是等价的， 也就是说如果returns中写了变量，那么就不用写return了。
  function studentNames2() constant returns(string name0, string name1) {
    name0 = students[0];
    name1 = students[1];
    return (name0, name1);
  }

  function yuanzu() constant returns(uint, bool, string) {
    return (1,true,'hh');
  }
}
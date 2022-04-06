pragma solidity ^0.4.4;

contract C {
  // 声明一个字典
  mapping(uint => string) public students;

  function C() {
    students[0] = 'li';
    students[1] = 'haoran'; 
  }

  // 当我们使用public声明students字典时， 其实内部帮我们实现了下面这个函数，也就是说如果用public修饰字典，那么下面这个写不写都一样
  // 有一个奇怪的现象，字典students变量名和字典students函数名竟然可以同时存在。但是如果字典的类型不是public，那么就报错了。
  function students(uint id) constant returns(string) {
    return students[id];
  }
}


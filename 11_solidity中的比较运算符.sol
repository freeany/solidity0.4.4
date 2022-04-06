pragma solidity ^0.4.4;

//  <=, <, ==, !=, >=, >
contract Test {
  uint8 _a = 100; 
  uint8 _b = 200;

  function test1() constant returns (bool) {
    return _a<=_b;
  }

  function test2() constant returns (bool) {
    return _a<_b;
  }

  function test3() constant returns (bool) {
    return _a==_b;
  }

  function test4() constant returns (bool) {
    return _a!=_b;
  }

  function test5() constant returns (bool) {
    return _a>=_b;
  }

  function test6() constant returns (bool) {
    return _a>_b;
  }
}

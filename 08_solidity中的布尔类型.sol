pragma solidity ^0.4.4;

contract Person {
  uint _a;
  uint _b;
  bool flag;

  function Person() {
    _a = 100;
    _b = 200;
  }

  function fei() constant returns(bool) {
    return (!flag);
  }
  function luojiyu() constant returns(bool) {
    return _a == _b && flag;
  }
  function luojihuo() constant returns(bool) {
    return _a != _b || flag;
  }
}

pragma solidity ^0.4.4;

// 属性修饰符默认有三种
// public > internal > private
// internal 和 private 都不能被外部所访问。

// 方法的修饰符默认是public
contract Person {
  function name() constant returns (uint) {
    return 123;
  }
  function age() constant public returns (uint)  {
    return 55;
  }

  function height() constant internal returns (uint) {
    return 22;
  }

  function weight() constant private returns (uint) {
    return 180;
  }
}

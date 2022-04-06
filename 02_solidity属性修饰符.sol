pragma solidity ^0.4.4;

// 属性修饰符默认有三种
// public > internal > private
// internal 和 private 都不能被外部所访问。
contract Person {
  // 声明一个变量，默认的修饰符是internal
  uint _height;
  // 等同于
  // uint internal _height; // 默认的访问权限是internal

  uint internal _age;
  uint private _name;

  uint public _money; // 如果属性使用了public声明，那么默认会声明一个同名(_money)的getter函数。

  /**
    function _money() constant returns (uint) {
      return _money
    }
  */
  function _money() constant returns (uint) {
    return _money
  }

}

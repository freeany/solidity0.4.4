pragma solidity ^0.4.4;

// 属性修饰符默认有三种
// public > internal > private
// internal 和 private 都不能被外部所访问。

// 方法的修饰符默认是public
contract Person {
  uint _weight;
  uint private _height;
  uint internal _age;
  uint public _money;


  function Person() {
    _age = 12;
  }


  function test1() constant returns (uint) {
    return _weight;
  }
  function test2() constant public returns (uint)  {
    return _height;
  }

  function test3() constant internal returns (uint) {
    return _age;
  }

  function test4() constant private returns (uint) {
    return _money;
  }

  function testInternalOrPrivate() constant public returns (uint) {
    return this.test3(); // 因为test3是internal类型的，所以这行代码会报错。
  }

  function testPublic() constant public returns (uint) {
    return this.test1(); // 因为test1是public类型的，是可以使用this指针调用
  }
}

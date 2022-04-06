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
}

// solidity中的继承，子合约不能继承 private类型的方法和属性。其他的都可以直接使用。
contract Student is Person{

}


contract Person1 {
  uint _sex;

  function Person1() {
    _sex = 1;
  }

  function sex() constant returns (uint) {
    return _sex;
  }
}

// 在合约中可以实现多继承
contract Student1 is Person, Person1 {
  function sex constant returns (uint) () {
    return 123;
  }
}

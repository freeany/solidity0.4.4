pragma solidity ^0.4.4;

contract Person {
  string _name;

  function Person(string name) {
    _name = name;
  }

  function name() constant returns (string) {
    return _name;
  }

  function f() {
    modify(_name);
  }

  // 默认是string memory name, 代表值传递。
  // function modify(string name) private {
  //   name = 'hello';
  // }
  // 如果是storage，那么代表引用传递。
  // 但是如果形参类型是storage，那么引用类型传递, 如果形参用storage修饰，那么该方法不能使用public修饰。方法只能在内部调用。
  function modify(string storage name) private {
    // 如果string加上了storage修饰，那么不可以直接修改了。
    // name = "hello";
    // 需要这样修改
    bytes(name)[0] = "L";
  }
}

/**
  需要注意几个地方: 
    1. 传进来的形参默认是memory类型的，是值传递
    2. 如果需要引用类型传递，那么把memory改为storage类型，而且这个函数必须是internal或private。不能是public
    3. 而且storage类型的字符串长度是不可变的，如果想要改变值，只能将字符串转为字节数组然后去获取索引去修改索引对应的值。不能直接给形参变量赋值。
*/
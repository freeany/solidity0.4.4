pragma solidity ^0.4.4;

/*
  pragma：版本声明
  solidity：开发语言
  0.4.4：当前合约的版本，0.4代表主版本，.4代表修复bug的升级版
  ^：代表向上兼容，0.4.4~0.4.9可以对我们当前的代码进行编译
*/

// 声明一个Person的类
/* Person是合约名 类比于java中的 class Person extends Contract */
contract Person {
  uint _height; // 声明一个属性的时候我们习惯前面加一个下划线，这也是一种规范。感觉有点像定义私有变量的意思，在程序中他就是私有变量，外界无法访问。
  uint _age;
  address _owner; // 代表合约的拥有者 160位数字

  // 合约类如何初始化对象(construct构造函数)
  // 方法名和合约名相同时，该方法就是类的构造函数，在创建对象时，构造函数最先被自动调用。
  function Person() {
    _height = 33;
    _age = 20;
    _owner = msg.sender; // 钱包地址
  }

  // 合约类中标准的setter方法(去掉下划线改为驼峰), 可以修改_height属性
  // 要花燃料费
  function setHeight(uint height) {
    _height = height;
  }

  // getter方法不需要花燃料费
  // 合约类中标准的getter方法(去掉下划线)， 可以读取_height属性
  function height() constant returns (uint){
    return _height;
  }

  // 加不加constant的区别是：
  // 如果加了constant代表方法只读， 那么直接调用即可。
  // 如果不加constant那么还需要使用call方法来调用函数。
  // 如果方法里不需要写入数据，那么就要加constant
  // 对象在被创建的时候首先调用构造函数，然后再执行所有带constant的方法
  // returns代表约定返回值的类型
  function age() constant returns (uint){
    return _age;
  }

  function owner() constant returns (address) {
    // return _owner; // return _owner有问题
    return msg.sender;
  }

  // 合约类如何销毁对象
  // kill不能加constant
  function kill()  {
    if(_owner == msg.sender) {
      // msg代表全局
      // 析构函数
      selfdestruct(_owner);
    }
  }

  function k2() constant returns (address) {
    return _owner;
  }
}

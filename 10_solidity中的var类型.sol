pragma solidity ^0.4.4;

contract Test {
  uint8 _num; 
  function testVar() returns(uint8) {
    uint8 num = 12;
    // 用var声明的变量的类型 由第一次赋值的数据决定。比如b变量第一次接收到的赋值是uint8的num，那么此时b变量就是uint8类型的。
    var b = num;
    // 下面这行代码会报错
    // b = 256;
    return b+1;
  }

  function testVar1() returns(uint8) {
    uint8 num = 1;
    // 如果是i<=255,那么代码就错了，因为i==255的时候，还会走到循环体里，然后i++ 得到256, 但是i第一次被复制就被确定了uint8类型，256存放不到uint8类型中，所以如果这样执行的话，那么此时会报错。
    for(var i = 0; i<=255;i++) {
      num = i;
    }
    return num;
  }
}

/**
  // 如果声明了一个a变量
  var a = 1;
  此时a的类型是uint8类型。
*/

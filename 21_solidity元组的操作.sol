pragma solidity ^0.4.4;

contract C {

  uint[] data;
  // 创建数组的时候给它分配空间。
  // uint[] data = new uint[](5);

  function f() constant returns(uint, bool, string, uint) {
    return (1,true,'hh',8);
  }

  // 调用元组函数
  function g1() constant returns(uint, bool) {
    var (a,b,c,d) = f();
    return (a,b);
  }
  
  // 对元组进行赋值
  function g2() constant returns(uint, uint) {
    var (a,,,d) = f();
    (a,d) = (3,6);
    return (a,d);
  }

  // 元组对元组进行赋值
  function g3() constant returns(uint, uint) {
    var (a,,,d) = f();
    (a,d) = (d,a);
    return (a,d);
  }

  // 修改数组长度的值   返回[0, 0]
  function g4() constant returns(uint[]) {
    (data.length,) = f();
    return data;
  }

  // 没啥意义，本来想说明的是:  不能在元组 “解构” 的时候给数组中的元素赋值。
  // 现在编译器直接就报错了
  function g5() constant returns(uint []) {
    var (a,b,,) = f();
    data[1] = a;
    return data;
  }

  // 给变量赋值
  function g6() constant returns(uint) {
    var (x,) = (1,);
    return x;
  }
}

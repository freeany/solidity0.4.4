pragma solidity ^0.4.4;

// +， -， *， /，(%求余)，(**次方)，(<< 左移)，(>> 右移) 
contract Test {
  
  uint8 _a = 5; 

  function jia(int num) constant returns(int) {
    return _a + num;
  }

  // 当我们要进行减运算时，return的修饰符要使用int类型
  function jian(int num) constant returns(int) {
    return _a - num;
  }

  function cheng(int num) constant returns(int) {
    return _a * num;
  }

  function chu(int num) constant returns(int) {
    return _a / num;
  }

  function quyu(int num) constant returns(int) {
    return _a % num;
  }

  // 当我们使用幂运算时， 变量必须是uint类型的
  function qiumi(uint num) constant returns(int) {
    return _a ** 5;
  }
}

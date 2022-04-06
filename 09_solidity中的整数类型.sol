pragma solidity ^0.4.4;


contract Test {
  uint8 _num; // 无符号8位整型，能存储0-255

  function num() constant returns(uint8){
    return _num; 
  }
  // 如果我们传入256， 则会报错
  function setNum(uint8 num) {
    _num = num;
  }
}

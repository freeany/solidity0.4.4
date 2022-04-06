pragma solidity ^0.4.4;

//  (& 与), (| 或), (^ 异或), (~ 非)
contract Test {
  
  uint8 _a = 5; // uint a的二进制是 0000 0101
  uint8 _b = 8; // uint a的二进制是 0000 1000

  function yu() constant returns (uint) {
    // 按位与  都是1才为1， 其他都为0
    // 0000 0101 & 0000 1000 = 0000 0000
    return _a & _b;
  }

  function huo() constant returns (uint) {
    // 按位或   只要有1就是1，其他都是0
    // 0000 0101 ｜ 0000 1000 = 00001101 = 1*2^0 + 0*2^1 + 1*2^2 + 1*2^3 = 13 
    return _a | _b;
  }

  function yihuo() constant returns (uint) {
    // 异或  只要相同就是 1， 不同就是0
    // 0000 0101 ^ 0000 1000 = 0000 1101
    return _a ^ _b;
  }

  function fei() constant returns (uint) {
    // 非 直接取反  0000 0101  = 1111 1010
    return ~_a;
  }
}

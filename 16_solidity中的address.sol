pragma solidity ^0.4.4;

contract Test {
  address public _owner;
  uint public _num;

  function Test() {
    _owner = msg.sender;
  }
  
  function getBalance(address addr) constant returns(uint){
    return addr.balance;
  }

  function getThisBalance() constant returns(uint) {
    // this指的事合约地址，但是合约地址为什么能.balance呢？ 因为合约地址也可以作为钱包地址
    return this.balance;
  }
}


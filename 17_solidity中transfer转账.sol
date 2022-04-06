pragma solidity ^0.4.4;
// 在remix中需要使用0.4.26版本的才能编译...
// pragma solidity ^0.4.26;

contract PayableKeyword {

  // 如果方法中涉及到转账的操作，那么就要加上payable修饰符。
  function deposite() payable{
    address Account2  = 0xA93398eE83a4a60DD0Cc964F96D28D29eAf937Cf;
    // Account2.transfer(msg.value);
    Account2.transfer(msg.value); // msg.value只能输入整数
  }

  function getAccount1Balance() constant returns(uint) {
    address Account1 = 0xDCFF08E9237a100ef4f345CD6c49Ef2aac48Fe6C;
    return Account1.balance;
  }

  function getOwnerBalance() constant returns(uint) {
    address Owner = msg.sender;
    return Owner.balance;
  }
}


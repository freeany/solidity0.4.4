pragma solidity ^0.4.4;


contract Test {
  // 保存第一次部署合约，花费部署合约的gas费的钱包地址。
  address public _owner;
  uint public _num;
  
  function Test() {
    // 谁部署的合约，_owner就指向谁，就是合约的拥有者。
    _owner = msg.sender; // 第一次(注意是第一次)调用此方法的是哪个钱包地址，这个_owner就指向谁。
    _num = 5;
  }

  function msgSenderAddress() constant returns(address) {
    return msg.sender;
  }

  function addNumBy5()   {
    _num = _num + 5;
  }

  function addNumBy10()  {
    // _owner被第一次发布之后就不会改变了， 但是如果我们切换了账户，msg.sender就会发生改变，这样就会导致_owner和msg.srender不一致。
    if(_owner == msg.sender) {
      _num = _num + 10;
    }
  }
}


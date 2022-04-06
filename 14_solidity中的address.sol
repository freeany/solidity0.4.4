pragma solidity ^0.4.4;


// 以太坊中的地址长度是20个字节，一字节等于八位，一共160位,  所以address也可以用uint160来声明
contract Test {
  address _owner;
  uint160 _ownerUint;

  function Test() {
    _owner = 0xF055775eBD516e7419ae486C1d50C682d4170645;
    _ownerUint = 1372063746939811866332913075223978746532890871365;
  }

  function owner() constant returns (address) {
    return _owner;
  }


  // 将address转换为uint160
  function addressToUint160() constant returns(uint160) {
    // 得到 uint160: 1372063746939811866332913075223978746532890871365
    return uint160(_owner);
  }
  
  // 将unit160转换为address
  function uint160ToAddress() constant returns(address) {
    return address(_ownerUint);
  }
}

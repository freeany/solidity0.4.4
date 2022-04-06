pragma solidity ^0.4.4;

/**
  集资的合约
  1. 有两个角色 一个是投资人Funder，也就是出资者，还有一个是运动员Campaign, 被赞助者。 一个Funder可以给多个Campaign赞助，一个Campaign也可以被多个Funder赞助。
*/

contract CrowdFunding {

  // 定义一个 `Funder` 结构体，用于表示投资人，其中有投资人的钱包地址和投资金额。
  struct Funder {
    address addr; // 出资人地址
    uint amount;  // 出资金额
  }

  // 定义一个 `Campaign` 结构体， 用于表示受益人
  struct Campaign {
    address beneficiary; // 受益人钱包地址
    uint fundingGoal; // 需要赞助的总额度
    uint numFunders; // 有多少人赞助
    uint amount; // 已赞助的总金额
    mapping (uint => Funder) funders; // 受益人的出资人信息(按照索引存储)
  }

  uint numCampaigns; // 统计运动员(被赞助人)数量
  mapping (uint => Campaign) campaigns; // 存储运动员(受益人)的信息__按照索引存储

  // 定义一个新增受益人的函数，传入受益人地址，和需要赞助的额度
  function newCampaign(address beneficiary, uint goal) public returns (uint campaignId) {
    campaignId = numCampaigns++;
    campaigns[campaignId] = Campaign(beneficiary, goal, 0, 0);
  }

  // 定义一个赞助的函数，通过受益人id给受益人赞助
  function contribute(uint campaignId) public payable {
    Campaign storage c = campaigns[campaignId];
    // 出资人为当前调用合约的地址， amount为msg.value
    c.funders[c.numFunders++] = Funder({addr: msg.sender, amount: msg.value});
    
    c.amount += msg.value;
    c.beneficiary.transfer(msg.value);
  }

  // 检查某个受益人的需要赞助的总额度是否达标，不达标返回false，达标返回true
  function checkGoalReached(uint campaignId) public view returns (bool reached){
    Campaign storage c = campaigns[campaignId];
    if(c.fundingGoal <= c.amount ) {
      return true;
    }else {
      return false;
    }
  }
}


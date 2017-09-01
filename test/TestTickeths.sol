pragma solidity ^0.4.2;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Tickeths.sol";

contract TestTickeths {

  function testBuyTicket() {
    Tickeths t = Tickeths(DeployedAddresses.Tickeths());

    t.buyTicket();
    uint blockTimestamp = block.timestamp;

    Assert.equal(t.getTicketTimestamp(), blockTimestamp, "After buying a ticket the ticket timestamp should be equal to the block timestamp");
  }

}

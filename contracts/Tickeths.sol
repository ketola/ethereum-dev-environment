pragma solidity ^0.4.4;

contract Tickeths {

  /**
   * This is the ethereum address of the company selling the tickets.
   * Value is set in the constructor when the contract is created
   */
  address public trainCompany;

  /**
   * Customers and the timestamp of the last purchased ticket
   */
  mapping (address => uint) public tickets;

  /**
   * Constructor
   */
	function Tickeths() {
		trainCompany = msg.sender;
	}

  /**
   * Buy ticket for account using the contract
   */
  function buyTicket() external {
    tickets[msg.sender] = block.timestamp;
  }

  /**
   * Returns the ticket timestamp for the account that is using the contract
   */
  function getTicketTimestamp() external returns (uint) {
    return tickets[msg.sender];
  }
}

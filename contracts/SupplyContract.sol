pragma solidity ^0.4.24;

/**
 * @title SupplyContract
 * @dev Very simple supply contract
 */
contract SupplyContract {

  address public owner;
  uint256 public currentSupply;

  event SupplyChanged(
    address indexed caller,
    uint256 amountChanged,
    uint256 currentSupply
  );

  modifier onlyOwner() {
    require(msg.sender == owner);
    _;
  }

  /**
   * @dev Constructor that gives msg.sender all of existing tokens.
   */
  constructor(uint256 initalSupply) public {
    currentSupply = initalSupply;
    owner = msg.sender;
  }

  function consumeSupply(uint256 amount) public {
    require(amount >= 0);
    require(currentSupply - amount >= 0);

    currentSupply -= amount;
    emit SupplyChanged(msg.sender, amount, currentSupply);

  }

  function totalSupply() public view returns (uint256) {
    return currentSupply;
  }
}

pragma solidity ^0.4.24;

import "./ERC20.sol";
import "./ERC20Detailed.sol";
import "./ERC20Burnable.sol";
import "./ERC20Mintable.sol";
import "./ERC20Pausable.sol";

/**
 * @title SimpleToken
 * @dev Very simple ERC20 Token example, where all tokens are pre-assigned to the creator.
 * Note they can later distribute these tokens as they wish using `transfer` and other
 * `ERC20` functions.
 */
contract QNNToken is ERC20, ERC20Detailed,ERC20Burnable,ERC20Mintable,ERC20Pausable {

  uint256 public constant INITIAL_SUPPLY = 10000000000 * (10 ** uint256(decimals()));

  /**
   * @dev Constructor that gives msg.sender all of existing tokens.
   */
  constructor() public ERC20Detailed("QNNToken", "QNN", 18) {
    _mint(msg.sender, INITIAL_SUPPLY);
  } 

}

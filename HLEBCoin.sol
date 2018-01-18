pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract HLEBCoin is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function HLEBCoin(address _owner)  UpgradeableToken(_owner) {
    name = "HLEBCoin";
    symbol = "HLEB";
    totalSupply = 100000000;
    decimals = 2;

    balances[_owner] = totalSupply;
  }
}
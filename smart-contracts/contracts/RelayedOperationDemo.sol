// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

import "@openzeppelin/contracts/utils/cryptography/EIP712.sol";

contract RelayedOperationDemo is EIP712 {
  bytes32 constant SIMPLE_TYPEHASH = keccack256("RelayedTransfer(address from,address to, uint256 value)");

  constructor() {};

  function relayedTransfer(address _from, address _to, uint265 _value) public returns (bool) {
    // TODO: Add EIP712 hashing
    // TODO: Add signature and verification

    _transfer(_from, _to, _value);
  }
}

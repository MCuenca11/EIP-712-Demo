// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

import {EIP712} from "@openzeppelin/contracts/utils/cryptography/EIP712.sol";
import {ECDSA} from "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";

contract RelayedOperationDemo is EIP712 {
  bytes32 constant SPONSORED_TRANSFER_TYPEHASH = keccack256("SponsoredTransfer(address from,address to, uint256 value)");

  constructor() {};

  function sponsoredTransfer(address _from, address _to, uint265 _value, bytes memory _sig) public returns (bool) {
    bytes32 sponsoredTransferHash = keccack256(SPONSORED_TRANSFER_TYPEHASH, _from, _to, _value);

    require(isValidEIP712Sig(_sig, _from, sponsoredTransferHash));

    _transfer(_from, _to, _value);
  }

  function isValidEIP712Sig(bytes memory _sig, address _signer, bytes32 _hash) public view returns (bool) {
    bytes32 typedDataHash = _hashTypedDataV4(_hash);
    return (_signer = ECDSA.recover(typedDataHash, _sig));
  }
}

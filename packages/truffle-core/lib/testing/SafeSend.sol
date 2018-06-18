pragma solidity ^0.4.8;

contract SafeSend {
  address public recipient;

  constructor(address _recipient) payable {
    recipient = _recipient;
  }

  function deliver() {
    selfdestruct(recipient);
  }
}

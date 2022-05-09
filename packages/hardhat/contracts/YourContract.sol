pragma solidity >=0.8.0 <0.9.0;
//SPDX-License-Identifier: MIT

import "hardhat/console.sol";
// import "@openzeppelin/contracts/access/Ownable.sol"; 
// https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol

contract YourContract {
  //
  string public purpose = "Building Unstoppable Apps!!!";
  uint public count = 1;

  event SetPurpose(address sender, string purpose);

  constructor() payable {
    // what should we do on deploy?
  }

  function setPurpose(string memory newPurpose) public {
      purpose = newPurpose;
      console.log(msg.sender,"set purpose to",purpose);
      emit SetPurpose(msg.sender, purpose);
  }

  function inc() public {
    count += 1;
  }

  function dec() public {
    count -= 1;
  }

  // to support receiving ETH by default
  receive() external payable {}
  fallback() external payable {}
}

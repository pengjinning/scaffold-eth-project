pragma solidity >=0.8.0 <0.9.0;
//SPDX-License-Identifier: MIT
// https://docs.scaffoldeth.io/scaffold-eth/toolkit/how-tos-and-troubleshooting/adding-a-new-contract

import "hardhat/console.sol";
//import "@openzeppelin/contracts/access/Ownable.sol"; //https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol

contract NewContract {

    //event SetPurpose(address sender, string purpose);

    string public purpose = "Learn Scaffold-eth";

    constructor() {
        // what should we do on deploy?
    }

    function setPurpose(string memory newPurpose) public {
        purpose = newPurpose;
        console.log(msg.sender,"set purpose to",purpose);
        //emit SetPurpose(msg.sender, purpose);
    }

}

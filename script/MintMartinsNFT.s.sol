//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Script.sol";
import "../src/MartinsNFT.sol";

contract MintMartinsNFT is Script {
    function run() external {
        vm.startBroadcast();
        MartinsNFT nft = MartinsNFT (0x7954e410c09Dc19227f91C5c3b0C0871e0356a30);
        nft.mint(0xab4e02e29E0c5058541Dd9F8e21284E397036605);
        vm.stopBroadcast();
    }
}
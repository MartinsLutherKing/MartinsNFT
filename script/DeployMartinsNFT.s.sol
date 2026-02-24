//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Script.sol";
import "../src/MartinsNFT.sol";

contract DeployMartinsNFT is Script {
    function run() external {
        vm.startBroadcast();
        new MartinsNFT("ipfs://bafybeiflwipcixrrxr3un3dmkfzlex2codgurjzlmysquunkuqpgtwlbsq/1.json");
        vm.stopBroadcast();
    }
} 
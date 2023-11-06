// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script} from "forge-std/Script.sol";
import {Evaluator} from "../src/EvaluatorToken.sol";
import {RewardToken} from "../src/RewardToken.sol";
import {TokenERC20} from "../src/ERC20.sol";

contract DeploymentScript is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        RewardToken rewardToken = new RewardToken();
        new Evaluator(rewardToken);

        TokenERC20 myErc20 = new TokenERC20();

        vm.stopBroadcast();
    }
}

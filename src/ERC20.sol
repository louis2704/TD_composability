// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.21;

import {IStudentToken} from "./IStudentToken.sol";
import {ERC20} from  "openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";

contract TokenERC20 is IStudentToken, ERC20 {
    uint public toMint = 1000000000000000;
    constructor() ERC20("Lousitoken", "LSB"){
        _mint(msg.sender, toMint);
    }

    function approveForContract(address approval, uint256 amount) public virtual returns(bool){
        address owner = address(this);
        _approve(owner, approval, amount);
        return true;
    }

    function TransferTokens(address address1, uint256 amount) public virtual returns(bool){
        address owner = msg.sender;
        _transfer(owner, address1, amount);
        return true;
    }

	function createLiquidityPool() external{

    }

	function SwapRewardToken() external{

    }
}

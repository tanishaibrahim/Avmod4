// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenToken is ERC20, ERC20Burnable, Ownable {
    string public items;
    constructor() ERC20("Degen", "DGN") {
        items="Items available in the shop are 1. Degen Stickers 2. Degen Bottle 3. Degen printed T-shirt";
    }

    function mint(address to_address, uint256 amt) public onlyOwner {
        _mint(to_address, amt);
        
    }

    function redeem(uint256 redeem_amount) public{
        
        require(balanceOf(msg.sender)>0, "Mint more tokens!! Atleast more than 1");
        require(redeem_amount<4 , "Unfortunately, we have only three items in our shop");
        _burn(msg.sender, redeem_amount*1);
       
    }
}

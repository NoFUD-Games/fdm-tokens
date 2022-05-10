// SPDX-License-Identifier: GPL-3
//
// $FDM                                   |
//                                      \ _ /
//                                    -= (_) =-
//   .\/.                               /   \
// .\\//o\\                     ,\/.      |               ,~
// //o\\|,\/.   ,.,.,   ,\/.  ,\//o\\                     |\
//   |  |//o\  /###/#\  //o\  /o\\|                      /| \
// ^^|^^|^~|^^^|' '|:|^^^|^^^^^|^^|^^^""""""""("~~~~~~~~/_|__\~~~~~~~~~~
//  .|'' . |  '''""'"''. |`===`|''  '"" "" " (" ~~~~ ~ ~======~~  ~~ ~
// ^^^^^   ^^^ ^ ^^^ ^^^^ ^^^ ^^ ^^ "" """( " ~~~~~~ ~~~~~  ~~~ ~

pragma solidity 0.8.11;

import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/draft-ERC20PermitUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

///	@title	FDM  token contract
contract FDM is OwnableUpgradeable, ERC20PermitUpgradeable {

    function initialize() initializer public {
        __ERC20_init("Fundamentals Dont Matter", "FDM");
        __Ownable_init();
        __ERC20Permit_init("FDM");

        _mint(msg.sender, 1_234_567_890e18);
    }
}

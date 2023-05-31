// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 < 0.9.0;
// Code Eater Lottery Project
// https://youtu.be/aFI_XPll_mg
contract lottery{
    address public manager;
    address payable[] public participants;
    constructor(){
        manager=msg.sender;
    }
    receive() external payable{
       require( msg.value==1 ether, "Please send 1 Ether");
       participants.push(payable(msg.sender));
    }
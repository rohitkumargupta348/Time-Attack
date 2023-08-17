// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Timeattack{
    address winner;
    function winnerCheck(uint value) external {
        //block.timestamp is controlled by miners and can be manipulated by miner and can also become the winner alternative can be block.number
        if(value == block.timestamp%2){
            winner = msg.sender;
        }
    }
}

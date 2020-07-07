pragma solidity ^0.5.0;

import "../Class.sol";
import "../Skills/Attack.sol"

contract Rogue is Class("Rogue", 150, 15, 10, 5, 5) {
    constructor() public {
        _skills.push(new Attack());
        _skills.push(new Backstab());
    }
}
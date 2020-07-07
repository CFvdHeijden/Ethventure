pragma solidity ^0.5.0;

import "./Skill.sol";

contract Class {

    string private _name;

    uint private _hitPoints;
    uint private _manaPoints;

    uint private _agility;
    uint private _intelligence;
    uint private _strenght;

    Skill[] internal _skills;

    constructor(
        string memory name,
        uint hitPoints,
        uint manaPoints,
        uint agility,
        uint intelligence,
        uint strenght
    ) public {
        name = _name;
        hitPoints = _hitPoints;
        manaPoints = _manaPoints;
        agility = _agility;
        intelligence = _intelligence;
        strenght = _strenght;
    }

    function getName() public view returns(string memory) {
        return _name;
    }
    function getHitPoints() public view returns(uint) {
        return _hitPoints;
    }
    function getManaPoints() public view returns(uint) {
        return _manaPoints;
    }
    function getAgility() public view returns(uint) {
        return _agility;
    }
    function getIntelligence() public view returns(uint) {
        return _intelligence;
    }
    function getStrenght() public view returns(uint) {
        return _strenght;
    }
}
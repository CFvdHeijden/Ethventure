pragma solidity ^0.5.0;

contract Skill {
    string private _name;
    string private _class;
    uint private _levelRequired;
    uint private _damage;
    uint private _manaCost;

    constructor(string memory name, string memory class, uint levelRequired, uint damage, uint manaCost) public {
        _name = name;
        _class = class;
        _levelRequired = levelRequired;
        _damage = damage;
        _manaCost = manaCost;
    }

    function getName() public view returns(string memory) {
        return _name;
    }
    
    function getClass() public view returns(string memory) {
        return _class;
    }

    function getLevelRequired() public view returns(uint) {
        return _levelRequired;
    }

    function getDamage() public view returns(uint) {
        return _damage;
    }

    function getManaCost() public view returns(uint) {
        return _manaCost
    }
} 
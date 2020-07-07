pragma solidity ^0.5.0;

import "./Character.sol";
import "./Class.sol";

contract Game {

    address private _owner;

    mapping(address => Character) private _characters;
    mapping(string => Class) private _classes;

    modifier isOwner {
        require(_owner == msg.sender, "Oops, Sender is not the contract owner :(");
        _;
    }

    // Is there so that any action concerning the game you want to do, requires a character
    modifier hasCharacter {
        require(_characters[msg.sender].isSet() == 1, "Character does not exist for address");
        _;
    }

    constructor() public {
        _owner = msg.sender;
    }

    function createCharacter(string memory name, string memory class) public {
        _characters[msg.sender] = new Character(name, _classes[class]);
    }

    function getCharacter() public view returns (Character) {
        return _characters[msg.sender];
    }

    function addClass(string memory key, Class class) public isOwner {
        _classes[key] = class;
    }

    function removeClass(string memory key) public isOwner {
        delete _classes[key];
    }

}
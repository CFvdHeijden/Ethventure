let Game = artifacts.require("./Game.sol");
let Character = artifacts.require("./Character.sol");

const PROVIDED_NAME = "TEST";
const PROVIDED_CLASS = "WIZARD";

contract("Game", (accounts) => {

    let creatorAccount = accounts[0];

    it("should create a character with the name provided", () => {
        let _game;
        let _character;

        return Game.deployed()
        .then(instance => {
            _game = instance;
            return _game.createCharacter(PROVIDED_NAME, PROVIDED_CLASS, creatorAccount);
        })
        .then(result => {
            return _game.getCharacter();
        })
        .then(character => {
            character = _character;
            return _character.getName();
        })
        .then(name => {
            assert.equal(name, PROVIDED_NAME, "Failed to create a character with the provided name");
        });

    });
});
pragma solidity >=0.5.16;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Gaming.sol";

contract TestGaming {
    uint public initialBalance = 10 ether;
    Gaming gaming;

    function beforeAll() public {
        gaming = Gaming(DeployedAddresses.Gaming());
    }

    function testPlayerWonGuessHigher() public {
        bool expected = true;
        bool result = gaming.determineWinner(5, 4, true);
        Assert.equal(expected, result, "Player won by guessing higher");
    }

    function testPlayerLostGuessLower() public {
        bool expected = false;
        bool result = gaming.determineWinner(5, 4, false);
        Assert.equal(expected, result, "Player lost by guessing lower");
    }

    function testPlayerAdded() public {
        address playerAddress;
        string memory playerName;
        uint playerBalance;
        uint wins;
        uint losses;

        (playerAddress, playerName, playerBalance, wins, losses) = gaming.players(0);
        Assert.equal(playerName, "test", "Player has a correct name");
        Assert.equal(playerBalance, 10, "Player has correct balance");
        Assert.equal(wins, 2, "Player has correct wins");
        Assert.equal(losses, 4, "Player has correct losses");
    }

    function testGameIsOnline() public {
        bool online = gaming.online();

        Assert.isTrue(online, "The game should be initially online");
    }
}
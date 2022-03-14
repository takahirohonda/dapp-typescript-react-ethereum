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
        Assert.equal(expected, result, "Player won by guessing higher when guess = true");
    }

    function testPlayerLostGuessLower() public {
        bool expected = false;
        bool result = gaming.determineWinner(4, 5, true);
        Assert.equal(expected, result, "Player lost by guessing lower when guess = true");
    }

    function testPlayerWonGuessLower() public {
        bool expected = true;
        bool result = gaming.determineWinner(4, 5, false);
        Assert.equal(expected, result, "Player lost by guessing lower when guess = false");
    }

    function testPlayerLostGuessHigher() public {
        bool expected = false;
        bool result = gaming.determineWinner(5, 4, false);
        Assert.equal(expected, result, "Player won by guessing lower when guess = false");
    }

    function testGameIsOnline() public {
        bool online = gaming.online();

        Assert.isTrue(online, "The game should be initially online");
    }
}
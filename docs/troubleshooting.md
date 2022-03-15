# Troubleshooting

# 1. Unit test not running

`import "truffle/Assert.sol";` has error on the IDE, `Source "truffle/Assert.sol" not found: File import callback not supported` and getting this error.

```bash
project:/test/TestGaming.sol:18:9: TypeError: Member "equal" not found or not visible after argument-dependent lookup in type(library Assert).
        Assert.equal(expected, result);
        ^----------^
```

Online forum suggested to do `yarn global add truffle`. But, it wasn't necessary. My case was the third argument was missing. So, updated `Assert.equal(expected, result);` to `Assert.equal(expected, result, "guessed correctly");`

# 2. Insufficient fund

We need to reset the blockchain by restarting the quick start on Ganache (under `Accounts & Keys` tab). Alternatively we can install cli, `yarn global add ganache-cli` and then `ganache-cli --defaultBalanceEther 100`.

# 3. Some new change

Use `web3.util.fromWei` instead of `web3.util`.

Use `await`

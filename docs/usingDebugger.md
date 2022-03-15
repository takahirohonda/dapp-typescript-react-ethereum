# Using debugger

```bash
# Run this first - develop console
yarn truffle develop
# Then, run this one in another console - log console
yarn truffle develop --log
```

Inside the truffle(develp)> from the `yarn truffle develop` console, we can type commands. Then the console with `--log` will display logs.

```bash
# re-compile the code
compile
# Migrate the compiled code to the local network
migrate --reset
```

Try to run actual code with

`Gaming.deployed().then(function(instance){return instance.winOrLose(5,true);}).then(function(value){console.log(value);});`

```js
Gaming.deployed()
  .then(function (instance) {
    return instance.winOrLose(5, true)
  })
  .then(function (value) {
    console.log(value)
  })
```

Then, find the transaction id from the log console.

```
 develop:ganache   Transaction: 0xb79e51998c7ee02041104270c7bba97e8e891f39e019ee05bcc9fa54e87d7292
```

Then call debug in the develop console.

```bash
debug
```

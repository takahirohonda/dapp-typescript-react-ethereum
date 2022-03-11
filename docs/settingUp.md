# Ethereum related installation.

1. Install Ganache to simulate Ethereum network in the local machine (https://trufflesuite.com/ganache/index.html)

2. Add `truffle` locally with `yarn add truffle -D`. To get the code required for the app, we can run `yarn truffle unbox truffle-box-github-url`. Not doing it. Setting app from scratch.

3. Copy & pasted these files

```bash
Dockerfile
server.js
tryffle-config.js
truffle.js
constracts
migrations
    - 1_initial_migration.js # this one is created when you init with truffle
    - 2_deploy_contracts.js
```

4. Update network host and port in `truffle-config.js` according to `RPC Server` value in Ganache App UI.

5. Run `yarn truffle migrate`

# Frontend setup

1. Creating React App project with `npx create-react-app my-app --template typescript`.

2. Add & configure `eslint` and add `styled-component`.

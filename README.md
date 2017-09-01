# Sample Ethereum Development Environment

## 1. Install testrpc and truffle

### Testrpc
To have a local blockchain in your development environment, install testrpc (https://github.com/ethereumjs/testrpc):

`npm install -g ethereumjs-testrpc`

### Truffle
Development tools for compiling, testing and deploying (http://truffleframework.com/):

`npm install -g truffle`

## 2. Create your project
1. Create a directory:

`mkdir <project-name>`

`cd <project-name>`

2. Create the project with truffle

`truffle init`

3. Write your contract under /contract

see Tickeths.sol in the examples

4. Write a test under /test

see TestTickeths.sol in examples

5. Compile and test

`truffle compile`

`truffle test`




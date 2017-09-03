# Sample Ethereum Development Environment

## 1. Install testrpc and truffle

### Testrpc
To have a local blockchain in your development environment, install testrpc (https://github.com/ethereumjs/testrpc):

`npm install -g ethereumjs-testrpc`

### Embark
Development tools for compiling, testing and deploying (https://embark.readthedocs.io):

`npm -g install embark`
`npm -g install mocha` (for unit testing)

## 2. Create your project
1. Create a directory:

`embark new <project-name>`

`cd <project-name>` (or use the example Tickeths app)

`npm install`

Start a local blockchain: `embark simulator`

Start the embark console: `embark run`

Open browser: http://localhost:8000/

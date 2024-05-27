# Hardhat-Test

## Description

Creating a simple token contract using solidity and tested its functionality with hardhat and ethers.js  

## Table of Contents
- [Installation](#installation)
- [Usage](#usage)
- [Contributing](#contributing)


## Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/DCVglobalnetwork/Hardhat-Test.git

2. Navigate to the project directory
   
```shell
cd token-hardhat
```
3. Install the dependencies:

```shell
npm install -y
```

```shell
npm install --save-dev hardhat
```

```shell
npx hardhat init
```

![image](https://github.com/DCVglobalnetwork/Hardhat-Test/assets/105791829/51a10388-57d6-40b8-863e-a85867bf0f03)

## Usage

```shell
npm install --save-dev @nomicfoundation/hardhat-toolbox
```

Add the highlighted line to your hardhat.config.js so that it looks like this:

```shell
require("@nomicfoundation/hardhat-toolbox");

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.24",
};
```
1. Compiling contract
```shell
npx hardhat compile
```

![Screenshot 2024-05-27 105953](https://github.com/DCVglobalnetwork/Hardhat-Test/assets/105791829/b9bdeabd-5c58-4fdc-af04-c14bae071b5f)


3. Testing contract
```shell
npx hardhat test
```

![Screenshot 2024-05-27 112138](https://github.com/DCVglobalnetwork/Hardhat-Test/assets/105791829/e05b6494-1aa0-4b4b-a275-2717d8846d64)


   

###  Contributing
Guidelines for how other developers can contribute to your project.

```markdown
## Contributing
1. Fork the repository.
2. Create a new branch (`git checkout -b feature-branch`).
3. Make your changes.
4. Commit your changes (`git commit -m 'Add some feature'`).
5. Push to the branch (`git push origin feature-branch`).
6. Open a Pull Request.
```




## Docs

* Hardhat

https://hardhat.org/docs

https://hardhat.org/tutorial/setting-up-the-environment

* Ethers.js
  
https://docs.ethers.org/v5/getting-started/  

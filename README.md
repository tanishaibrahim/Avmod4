# Avalanche module 4 - Creating and deploying Degen Token

In our project, a token called Degen has been created using ERC20 standard and deployed to avalanche fuji testnet. 

## Description

The Degen token that we created can be minted, burnt, approved, redeemed and transferred . There's also a Degen store which has 3 items which can be redeemed. This smart contract that we created is deployed to the Avalanche Fuji Testnet and has also been verified.

## Getting Started

### Installing

You can download the code as ZIP folder under code above.

### Executing program

Run the following commands to deploy and verify the contract:
```
npx hardhat test
```

```
npx hardhat run scripts/deploy.js --network fuji
```

```
npx hardhat verify {contract address} --network fuji
```

## Help

You will need to create a .env file in your project directory and add the following code along with the repective values:

```
WALLET_PRIVATE_KEY=
SNOWTRACE_API_KEY=
```

## Authors

Tanisha Ibrahim

@tanishaassii@gmail.com


## License

This project is licensed under the [MIT] License - see the LICENSE.md file for details

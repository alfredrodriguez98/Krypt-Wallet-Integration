//https://eth-goerli.g.alchemy.com/v2/H1RVODQGjqG40r3s5ZUdfeK9bo4_xrzX
require("@nomiclabs/hardhat-waffle");

module.exports = {
  solidity: "0.8.0",
  networks: {
    goerli: {
      url: "https://eth-goerli.g.alchemy.com/v2/H1RVODQGjqG40r3s5ZUdfeK9bo4_xrzX",
      accounts: [
        "77bfe18b2b47762e60bf5b5bfea5b35299cc02b95aa0e8ed7734b6c8ac346b18",
      ],
    },
  },
};

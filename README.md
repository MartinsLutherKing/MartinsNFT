# MartinsNFT

A simple yet functional ERC721 NFT smart contract built with Solidity and deployed using Foundry. This project demonstrates the implementation of a non-fungible token (NFT) collection with owner-controlled minting capabilities.

## Project Overview

**MartinsNFT** is an ERC721-based smart contract that allows the contract owner to mint unique NFTs and assign them to specified addresses. The contract includes metadata support through customizable base URIs for IPFS integration, enabling full-featured NFT functionality.

### Key Features

- ✅ **ERC721 Compliant**: Fully implements the ERC721 standard for NFTs
- ✅ **Owner-Controlled Minting**: Only the contract owner can mint new NFTs
- ✅ **Metadata Support**: Configurable base URI for IPFS-hosted metadata
- ✅ **Access Control**: Built-in ownership management via OpenZeppelin's `Ownable`
- ✅ **Auto-Incrementing Token IDs**: Automatic token ID assignment
- ✅ **Test Coverage**: Comprehensive unit tests with Foundry

## Project Structure

```
MartinsNFT/
├── src/
│   ├── MartinsNFT.sol          # Main NFT smart contract
│   └── Counter.sol             # Example counter contract
├── script/
│   ├── DeployMartinsNFT.s.sol  # Deployment script
│   ├── MintMartinsNFT.s.sol    # Minting script
│   └── Counter.s.sol           # Counter deployment script
├── test/
│   ├── MartinsNFT.t.sol        # Smart contract tests
│   └── Counter.t.sol           # Counter tests
├── lib/
│   ├── forge-std/              # Foundry standard library
│   └── openzeppelin-contracts/ # OpenZeppelin contracts
├── foundry.toml                # Foundry configuration
└── README.md                   # This file
```

## Smart Contract Details

### MartinsNFT.sol

The main NFT contract with the following specifications:

- **Token Name**: MartinsNFT
- **Token Symbol**: MRTNFT
- **Standard**: ERC721
- **Base URL**: IPFS-hosted metadata (configurable)

#### Functions

| Function                             | Access     | Description                                             |
| ------------------------------------ | ---------- | ------------------------------------------------------- |
| `constructor(string memory baseURI)` | Public     | Initializes the contract with the owner and base URI    |
| `mint(address to)`                   | Owner Only | Mints a new NFT and assigns it to the specified address |
| `_baseURI()`                         | Internal   | Returns the base URI for token metadata                 |

#### Constructor Parameters

- `baseURI`: The base IPFS URI for metadata (e.g., `ipfs://bafybeiflwipcixrrxr3un3dmkfzlex2codgurjzlmysquunkuqpgtwlbsq/`)

## Prerequisites

Before you begin, ensure you have the following tools installed:

- **Foundry**: Install from [getfoundry.sh](https://getfoundry.sh/)
- **Git**: For cloning and version control
- **Solidity**: Comes with Foundry
- **Node.js** (optional): For additional tooling

### Install Foundry

```bash
curl -L https://foundry.paradigm.xyz | bash
foundryup
```

## Installation

1. Clone the repository:

```bash
git clone <repository-url>
cd MartinsNFT
```

2. Install dependencies:

```bash
forge install
```

This will install OpenZeppelin contracts and the Foundry standard library.

## Building

Compile the smart contracts:

```bash
forge build
```

The compiled artifacts will be in the `out/` directory.

## Testing

Run the test suite to verify the smart contract functionality:

```bash
forge test
```

Run tests with verbosity to see more details:

```bash
forge test -v
```

### Test Coverage

The test suite includes:

- ✅ `testMintNFT()`: Verifies that NFT tokens can be minted and assigned correctly
- ✅ `testOnlyOwnerCanMint()`: Ensures only the contract owner can call the mint function

## Deployment

### Deploying to Sepolia Testnet

The project is pre-configured for deployment to Sepolia testnet (chain ID: 11155111).

1. Set up your environment variables in a `.env` file:

```bash
PRIVATE_KEY=<your-private-key>
ETHERSCAN_API_KEY=<your-etherscan-api-key>
```

2. Deploy the contract using Forge:

```bash
forge script script/DeployMartinsNFT.s.sol --rpc-url sepolia --broadcast --verify -vvv
```

Replace `sepolia` with your actual RPC URL or use a provider like:

- `https://sepolia.infura.io/v3/<PROJECT_ID>`
- `https://sepolia.drpc.org`
- `https://eth-sepolia.public.blastapi.io`

### Deployment Details

The deployment script deploys the contract with:

- **Base URI**: `ipfs://bafybeiflwipcixrrxr3un3dmkfzlex2codgurjzlmysquunkuqpgtwlbsq/1.json`
- **Chain**: Sepolia Testnet
- **Contract Address** (example): `0x7954e410c09Dc19227f91C5c3b0C0871e0356a30`

## Minting NFTs

After deploying the contract, mint NFTs using the minting script:

```bash
forge script script/MintMartinsNFT.s.sol --rpc-url sepolia --broadcast -vvv
```

### Script Configuration

The minting script is configured to:

1. **Connect to contract**: `0x7954e410c09Dc19227f91C5c3b0C0871e0356a30`
2. **Mint to address**: `0xab4e02e29E0c5058541Dd9F8e21284E397036605`

**Note**: Update these addresses in `script/MintMartinsNFT.s.sol` before running.

## Common Commands

### Format Code

Automatically format Solidity code to comply with Foundry standards:

```bash
forge fmt
```

### Check Contract Size

Analyze the compiled contract size:

```bash
forge build --sizes
```

### View ABI

Extract the contract ABI:

```bash
forge inspect MartinsNFT abi
```

### Run Local Anvil Node

Start a local Ethereum node for testing:

```bash
anvil
```

This creates a local blockchain at `http://localhost:8545`.

## Security Considerations

- ✅ Only the contract owner can mint new tokens
- ✅ Uses OpenZeppelin's audited ERC721 implementation
- ✅ Uses OpenZeppelin's time-tested access control via `Ownable`
- ⚠️ No supply cap (owner can mint unlimited tokens)
- ⚠️ No access control beyond owner privileges

### For Production Use

Before deploying to mainnet, consider:

- Implementing max supply limits
- Adding role-based access control for multi-signature operations
- Formal security audits
- More comprehensive test coverage

## Dependencies

- **OpenZeppelin Contracts**: ERC721, Ownable implementation
- **Foundry Std**: Standard library for testing and scripting

## Useful Resources

- [OpenZeppelin ERC721 Documentation](https://docs.openzeppelin.com/contracts/4.x/erc721)
- [Foundry Book](https://book.getfoundry.sh/)
- [Solidity Documentation](https://docs.soliditylang.org/)
- [ERC721 Standard](https://eips.ethereum.org/EIPS/eip-721)

## License

This project is licensed under the MIT License - see the source files for details.

---

**Built with ❤️ using Foundry and OpenZeppelin**
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>

````

### Cast

```shell
$ cast <subcommand>
````

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```

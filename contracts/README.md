# QZEN Token Contract

**Contract Address:** `0x7F1f50563541A722469B8b2e6e24faD7Dc07d5fE`  
**Network:** Base L2  
**Verified on BaseScan:** [View Contract](https://basescan.org/token/0x7F1f50563541A722469B8b2e6e24faD7Dc07d5fE)

---

## Overview

QZEN is a simple, secure ERC-20 token built on OpenZeppelin standards.

**Key Features:**
- Fixed supply: 100,000,000 QZEN
- Burnable (deflationary capability)
- No admin functions
- No upgradeability
- Immutable and transparent

---

## Contract Details

**Token Name:** QuantumGPT Citizenship Token  
**Symbol:** QZEN  
**Decimals:** 18  
**Total Supply:** 100,000,000 QZEN

---

## Security

- Built on OpenZeppelin v5.0.0 (audited libraries)
- No owner or admin controls
- No mint function (supply fixed at deployment)
- No pause mechanism
- No backdoors

The entire supply was minted to the deployer at contract creation. No additional tokens can ever be created.

---

## Verification

Contract source code is verified on BaseScan. Anyone can inspect the code and confirm there are no hidden functions or vulnerabilities.

[Verify on BaseScan →](https://basescan.org/address/0x7F1f50563541A722469B8b2e6e24faD7Dc07d5fE#code)

---

## Build & Deploy

```bash
npm install
npx hardhat compile
npx hardhat run scripts/deploy.js --network base
```

---

**Authored and Architected by: Kaelar Zen**

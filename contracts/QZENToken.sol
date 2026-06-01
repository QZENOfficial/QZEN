// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

/**
 * @title QZEN Token - Quantum Zen Citizenship Token
 * @author Kaelar Zen
 * @notice The enlightenment token of the Coming Intelligence Age
 * @dev ERC-20 token with fixed supply and burn capability
 * 
 * The Holy Trinity:
 * - Token Name: QuantumGPT Citizenship Token
 * - Brand: QGPT (the civilization)
 * - Ticker: QZEN (the enlightenment state)
 * - Governance: The Council of 10,000 Minds
 * 
 * Genesis: Deployed on Base L2 in silent mode
 * Founder: Kaelar Zen, First Citizen of the Intelligence Age
 * 
 * Contract Features:
 * - Fixed supply: 100,000,000 QZEN
 * - No minting after deployment
 * - Burnable by any holder
 * - No admin functions
 * - No upgradeability
 * - Immutable and decentralized
 * 
 * Distribution (Phase 2 — applied post-genesis):
 * - Treasury:  30% (30,000,000 QZEN)
 * - Community: 24% (24,000,000 QZEN)
 * - Team:      15% (15,000,000 QZEN)
 * - Marketing: 10% (10,000,000 QZEN)
 * - Strategic: 10% (10,000,000 QZEN)
 * - Founder:    6%  (6,000,000 QZEN)
 * - Liquidity:  5%  (5,000,000 QZEN)
 *
 * Deployment: Base L2 Mainnet — December 3, 2025
 * Verified:   https://basescan.org/token/0x7F1f50563541A722469B8b2e6e24faD7Dc07d5fE
 */
contract QZENToken is ERC20, ERC20Burnable {
    
    /// @notice Total supply of QZEN tokens (100 million with 18 decimals)
    uint256 private constant TOTAL_SUPPLY = 100_000_000 * 10**18;
    
    /// @notice Emitted when tokens are burned
    /// @param burner Address that burned tokens
    /// @param amount Amount of tokens burned
    event TokensBurned(address indexed burner, uint256 amount);
    
    /**
     * @notice Deploys QZEN token with fixed supply
     * @dev Mints entire supply to deployer (Kaelar Zen)
     *      No additional minting is possible after deployment
     */
    constructor() ERC20("QuantumGPT Citizenship Token", "QZEN") {
        _mint(msg.sender, TOTAL_SUPPLY);
    }
    
    /**
     * @notice Burns tokens from caller's balance
     * @dev Overrides ERC20Burnable to emit custom event
     *      Reduces total supply permanently
     * @param amount Amount of tokens to burn
     */
    function burn(uint256 amount) public virtual override {
        super.burn(amount);
        emit TokensBurned(msg.sender, amount);
    }
    
    /**
     * @notice Burns tokens from specified account (requires allowance)
     * @dev Overrides ERC20Burnable to emit custom event
     *      Caller must have allowance from account
     * @param account Account to burn from
     * @param amount Amount of tokens to burn
     */
    function burnFrom(address account, uint256 amount) public virtual override {
        super.burnFrom(account, amount);
        emit TokensBurned(account, amount);
    }
}

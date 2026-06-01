/**
 * QZEN Token Info Checker
 *
 * Fetches live token information from the Base blockchain via DexScreener.
 * No wallet or API key required — public data only.
 *
 * Usage:
 *   node scripts/check-token.js
 */

const CONTRACT = '0x7F1f50563541A722469B8b2e6e24faD7Dc07d5fE';
const CHAIN = 'base';

async function checkToken() {
  console.log('QZEN Token Info');
  console.log('='.repeat(50));
  console.log(`Contract: ${CONTRACT}`);
  console.log(`Network:  Base L2 (Chain ID: 8453)`);
  console.log('');

  try {
    const res = await fetch(
      `https://api.dexscreener.com/latest/dex/tokens/${CONTRACT}`
    );
    const data = await res.json();
    const pair = data?.pairs?.[0];

    if (!pair) {
      console.log('No DEX pair data available yet.');
      console.log(`View on BaseScan: https://basescan.org/token/${CONTRACT}`);
      return;
    }

    console.log(`Price:     ${pair.priceUsd ? '$' + parseFloat(pair.priceUsd).toFixed(6) : 'N/A'}`);
    console.log(`Market Cap: ${pair.fdv ? '$' + Number(pair.fdv).toLocaleString() : 'N/A'}`);
    console.log(`Liquidity:  ${pair.liquidity?.usd ? '$' + Number(pair.liquidity.usd).toLocaleString() : 'N/A'}`);
    console.log(`24h Volume: ${pair.volume?.h24 ? '$' + Number(pair.volume.h24).toLocaleString() : 'N/A'}`);
    console.log(`24h Change: ${pair.priceChange?.h24 ? pair.priceChange.h24 + '%' : 'N/A'}`);
    console.log('');
    console.log(`DexScreener: https://dexscreener.com/${CHAIN}/${CONTRACT}`);
    console.log(`BaseScan:    https://basescan.org/token/${CONTRACT}`);
    console.log(`Uniswap:     https://app.uniswap.org/swap?outputCurrency=${CONTRACT}&chain=base`);
  } catch (err) {
    console.error('Error fetching data:', err.message);
  }
}

checkToken();

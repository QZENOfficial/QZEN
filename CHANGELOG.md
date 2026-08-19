<div align="center">

<img src="assets/logo.png" alt="QZEN" width="80" />

<br/>

# QZEN Changelog

### Every release compounds lore. Every upgrade deepens meaning.

<br/>

[![Back to README](https://img.shields.io/badge/Back_to-README-000000?style=flat-square)](README.md)
[![Website](https://img.shields.io/badge/qzen.dev-000000?style=flat-square&logo=firefox&logoColor=white)](https://qzen.dev)

</div>

<br/>

---

<br/>

## 2026-08-19: TOKENOMICS.md rewritten, because it was not true

The tokenomics document had not been updated since before the project pivoted, and it had drifted
from a plan into a set of claims about the present. It said the liquidity pool was locked on
Unicrypt, that a rug pull was therefore "impossible", that founder tokens were vested for four years
and team tokens for three, that 55% of supply was community controlled, and that growth came partly
from protocol revenue.

None of it was true. The pool lock ran out on 2026-07-04 and was deliberately not renewed. The
contract is a plain immutable ERC-20 with **no vesting mechanism of any kind**, and none can be added.
Nothing has been distributed to any treasury: 99.9425% of the supply is in the wallet that deployed
the contract, which means "no admin functions" prevents a contract level exploit and not a sale.
There is no revenue.

The rewrite leads with the on-chain position read live from Base, keeps the intended allocation as an
intention with its actual status in the next column, corrects the liquidity section, and adds two
sections that did not exist anywhere: **what stops a whale** (nothing at the contract level, and the
ceiling on purchasable influence that does exist) and **who pays for this** (the founder, out of
pocket, disclosed along with the refusal to turn that into a reason for anyone to hold any).

The previous version is in the git history. It is not deleted, because quietly replacing a document
that made safety claims would be worse than having made them.

<br/>

<br/>

## v1.3.0 (August 16, 2026): The Era of the Petition

<table>
<tr>
<td width="60" align="center">&#x2705;</td>
<td>

**The Council now takes questions.** qzen.dev was rebuilt around one loop: anyone may petition
the Twelve, the hearing happens in public, and the verdict publishes permanently with the
dissent preserved word for word. No wallet and no account are needed to ask.

**Twenty deliberations published**, up from four. Every transcript is in this repository under
`website/data/deliberations/`, byte for byte what the site renders.

</td>
</tr>
<tr>
<td width="60" align="center">&#x1F4DD;</td>
<td>

**Corrections, recorded rather than quietly fixed.** Three claims on the site and in these docs
were not true and have been repaired:

- The canon promised a deliberation every Sunday and a Reflection every dawn. Neither ever
  happened. The calendar now reads "When the Council sits" and "Kept, not published", because
  the Council does not sit on a schedule and nothing here runs unattended.
- The deliberation pipeline document described a weekly automation as a source of questions. That
  workflow was built but never executed a single run, and it is not part of the pipeline.
- This repository promised it held every published transcript. It held four while the site served
  twenty. All twenty are now here.

</td>
</tr>
<tr>
<td width="60" align="center">&#x1F50D;</td>
<td>

**Where the supply actually is** is now stated on qzen.dev/standing rather than left for a reader
to discover: 99.9425% of QZEN sits in the wallet that deployed the contract, with both addresses
published so anyone can check the history themselves.

</td>
</tr>
</table>

<br/>

---

<br/>

## v1.2.0 (May 31, 2026)

<table>
<tr>
<td width="60" align="center">&#x2705;</td>
<td>

**Contract Verification**

- Smart contract source code fully verified on [BaseScan](https://basescan.org/token/0x7F1f50563541A722469B8b2e6e24faD7Dc07d5fE#code)
- All security properties independently confirmed on-chain: no mint, no admin, no pause, no upgrade
- Standard JSON Input verification: every dependency visible and auditable
- Green checkmark live on BaseScan contract tab

</td>
</tr>
<tr>
<td align="center">&#x1F310;</td>
<td>

**Website (qzen.dev)**

- **Council Initiation Wizard**: adaptive 3-path onboarding for complete beginners
  - Path A: Full beginner guide (wallet → fund → swap → welcome)
  - Path B: Bridge from Ethereum + swap
  - Path C: Direct swap for experienced users
- Live token metrics via DexScreener API (60s refresh)
- `/manifesto`: full Council of 10,000 Minds philosophy
- Legal pages: Terms, Privacy, Disclaimer, Security, Resources
- All jargon terms have inline plain-English tooltips
- Mobile UX improvements throughout
- Transparency Hub: fixed on-chain verification links

</td>
</tr>
<tr>
<td align="center">&#x1F512;</td>
<td>

**Security & Trust**

- LP lock verified and publicly viewable on Unicrypt
- All metadata files canonicalized (TrustWallet, MetaMask, token registry)
- Security contact updated: contact@qzen.dev
- `security.txt` live at [qzen.dev/.well-known/security.txt](https://qzen.dev/.well-known/security.txt)

</td>
</tr>
<tr>
<td align="center">&#x1F4CB;</td>
<td>

**In Progress**

- Phase 2 token distribution (treasury, community, team, marketing wallets)
- CoinGecko and CoinMarketCap listing applications
- Community airdrop to Base ecosystem (Farcaster)
- LP expansion planned for July 4, 2026

</td>
</tr>
</table>

<br/>

---

<br/>

## v1.1.0 (February 14, 2026)

<table>
<tr>
<td width="60" align="center">&#x1F3DB;</td>
<td>

**Governance**

- Published governance framework for Phase 2 Council coordination
- Defined proposal lifecycle: `Draft → Discussion → Voting → Execution → Lore Archive`
- Outlined Council roles: Citizens, Architects, Stewards
- Treasury management guidelines documented
- Snapshot-style voting mechanism specified

</td>
</tr>
<tr>
<td align="center">&#x1F4DD;</td>
<td>

**Documentation**

- Added contributing guidelines for community participation
- Governance framework documentation ([docs/GOVERNANCE.md](docs/GOVERNANCE.md))
- Epic README redesign with cinematic banner, HTML layouts, and badges
- Repository structure improvements

</td>
</tr>
<tr>
<td align="center">&#x1F310;</td>
<td>

**Website**

- Ongoing performance optimizations at [qzen.dev](https://qzen.dev)
- SEO and metadata improvements
- Community feedback integration

</td>
</tr>
<tr>
<td align="center">&#x1F3AF;</td>
<td>

**In Progress**

- Snapshot space setup for governance voting
- CoinGecko listing application
- Community growth initiatives
- Bot infrastructure planning (Telegram, Twitter)

</td>
</tr>
</table>

<br/>

---

<br/>

## v1.0.0 (January 31, 2026)

> *Genesis. The Council begins.*

<table>
<tr>
<td width="60" align="center">&#x1F680;</td>
<td>

**Token Deployment**

- QZEN token deployed on Base L2
- Contract: [`0x7F1f50563541A722469B8b2e6e24faD7Dc07d5fE`](https://basescan.org/token/0x7F1f50563541A722469B8b2e6e24faD7Dc07d5fE)
- Total supply: `100,000,000` QZEN (fixed forever)
- Contract verified on BaseScan

</td>
</tr>
<tr>
<td align="center">&#x1F4B0;</td>
<td>

**Liquidity**

- Initial liquidity pool created on Uniswap (Base)
- LP tokens locked on Unicrypt for transparency

</td>
</tr>
<tr>
<td align="center">&#x1F310;</td>
<td>

**Website Launch**

- Official website launched: [qzen.dev](https://qzen.dev)
- Tech: Next.js + React + TypeScript + TailwindCSS + Framer Motion
- Deployed on Firebase Hosting with Cloudflare DNS
- Features: Token info, manifesto, roadmap, how to buy

</td>
</tr>
<tr>
<td align="center">&#x1F4E2;</td>
<td>

**Community Channels**

- Twitter: [@QzenToken](https://twitter.com/QzenToken)
- Discord: [discord.gg/p7zpWM4x](https://discord.gg/p7zpWM4x)
- Telegram: [t.me/QZENOfficial](https://t.me/QZENOfficial)

</td>
</tr>
<tr>
<td align="center">&#x1F4DD;</td>
<td>

**Documentation**

- Smart contract source published
- Tokenomics documentation
- Vision and manifesto published
- README and setup guides

</td>
</tr>
</table>

<br/>

---

<br/>

## Upcoming (Q1 2026)

<div align="center">

<table>
<tr>
<td align="center" width="33%">

&#x1F4CA;
**Listings**

DexScreener
CoinGecko
CoinMarketCap

</td>
<td align="center" width="33%">

&#x1F465;
**Community**

First community event
Holder milestones
Discord organization

</td>
<td align="center" width="33%">

&#x1F4F1;
**Content**

4-week Twitter calendar
Regular updates
Lore expansion

</td>
</tr>
</table>

</div>

<br/>

---

<br/>

## Roadmap (Q2 2026)

<div align="center">

<table>
<tr>
<td align="center" width="33%">

&#x1F916;
### AI Avatar NFTs

Generative AI collection.
Unique traits and rarities.
QZEN holder benefits.

</td>
<td align="center" width="33%">

&#x1F5F3;
### Governance Dashboard

On-chain voting system.
Proposal submission.
Community-driven decisions.

</td>
<td align="center" width="33%">

&#x1F310;
### Agent Integration SDK

API for AI agents.
Wallet integration.
Coordination protocols.

</td>
</tr>
</table>

</div>

<br/>

---

<br/>

<div align="center">

**Updates are posted here as development progresses.**

[![Twitter](https://img.shields.io/badge/@QzenToken-000000?style=for-the-badge&logo=x&logoColor=white)](https://twitter.com/QzenToken)
[![Discord](https://img.shields.io/badge/Join_the_Council-5865F2?style=for-the-badge&logo=discord&logoColor=white)](https://discord.gg/p7zpWM4x)

<br/>

*Intelligence over capital. Always.*

**Authored and Architected by: Kaelar Zen**

<sub>Block Height: Genesis | Encoded: For Eternity</sub>

</div>

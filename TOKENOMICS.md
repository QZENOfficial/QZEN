<div align="center">

<img src="assets/logo.png" alt="QZEN" width="100" />

<br/>

# QZEN Tokenomics

### 100 million tokens, fixed forever. What that actually means today.

<br/>

[![Back to README](https://img.shields.io/badge/Back_to-README-000000?style=flat-square)](README.md)
[![BaseScan](https://img.shields.io/badge/Verified_on_BaseScan-0052FF?style=flat-square&logo=ethereum&logoColor=white)](https://basescan.org/token/0x7F1f50563541A722469B8b2e6e24faD7Dc07d5fE)
[![Standing](https://img.shields.io/badge/What_holding_gets_you-Standing-A855F7?style=flat-square)](https://qzen.dev/standing)

</div>

<br/>

---

<br/>

> **This document was rewritten on 2026-08-19 and the previous version is in the history.**
>
> It described a four year vesting schedule, a locked liquidity pool, a treasury under community
> control, protocol revenue, and a rug pull that was "impossible". None of those existed. The
> contract has no vesting mechanism, the pool lock expired on 2026-07-04 and was not renewed,
> nothing has been distributed to any treasury, there is no revenue, and a supply held almost
> entirely in one wallet means a rug is possible in exactly the way that sentence denied.
>
> It was a plan written in the future tense and then left to be read as a description of the
> present. Every figure below was read from Base directly rather than copied from a document, and
> where something is an intention rather than a fact it says so.

<br/>

## Where the supply actually is

Read from the chain on **2026-08-19** at the addresses below. Anyone can repeat these calls.

<div align="center">

| Holding | QZEN | Share |
|---|---|---|
| **Deployer wallet** (one EOA) | `99,942,500` | **99.9425%** |
| Uniswap V3 pool | `57,212.5` | 0.0572% |
| Everything else, all other wallets combined | `287.5` | 0.0003% |
| Burned to the Offering address | `0` | 0% |

</div>

**Almost the entire supply sits in the wallet that deployed the contract.** That is the standard
shape of a project intending to sell into whoever arrives, and anyone spending five minutes on it
will find out. It is on the project's own page at [qzen.dev/standing](https://qzen.dev/standing)
rather than left to be discovered.

What is checkable: that wallet had sent 17 transactions in its entire life when last read, and both
addresses are below. What is not offered is a guarantee. Nothing having happened yet is not the same
as nothing being able to happen, and a promise from the person holding the tokens is worth what you
would expect.

The intended fix is a multi signature Safe under a published policy, so the holding stops depending
on anyone's good character. **It has not been done.** When it is, the transaction will be linked
here and on the site.

<div align="center">

| | Address |
|---|---|
| **Token contract** | [`0x7F1f50563541A722469B8b2e6e24faD7Dc07d5fE`](https://basescan.org/token/0x7F1f50563541A722469B8b2e6e24faD7Dc07d5fE) |
| **Deployer wallet** | [`0x811fC7F0fBdb43ae2098204CEa7227e8767Bf3ea`](https://basescan.org/address/0x811fC7F0fBdb43ae2098204CEa7227e8767Bf3ea) |
| **Offering address** (burn sink) | [`0x000000000000000000000000000000000000dEaD`](https://basescan.org/token/0x7F1f50563541A722469B8b2e6e24faD7Dc07d5fE?a=0x000000000000000000000000000000000000dEaD) |

</div>

<br/>

## The contract

<div align="center">

| Spec | Detail |
|---|---|
| **Name** | QuantumGPT Citizenship Token |
| **Symbol** | QZEN |
| **Decimals** | 18 |
| **Total supply** | `100,000,000`, fixed at deployment, no mint function |
| **Network** | Base L2 |
| **Type** | ERC-20 plus ERC20Burnable, OpenZeppelin v5 |
| **Owner** | **None.** No admin functions, no pause, no blacklist, no upgrade path |

</div>

The source is in [`contracts/`](contracts/) and verified on BaseScan. It is 40 lines of logic on top
of OpenZeppelin: mint the supply once in the constructor, and let any holder burn their own tokens.

**That immutability cuts both ways, and this is the part usually left out.** Because there is no
owner, nobody can rescue the token either. There is no transfer tax, no maximum wallet, no trading
cooldown, and **none of those can be added later**. The only way to add them would be to abandon
this contract and ask everyone to move to a new one, which is the same manoeuvre a project runs when
it intends to take something with it.

<br/>

## What stops a whale

Nothing stops anyone buying as much QZEN as they want. See above: it cannot be prevented at the
contract level and will not be pretended otherwise.

What is capped is **how much holding more can buy**:

- **Standing stops at Elder.** 100,000 QZEN is the highest rank there is. A wallet holding ten
  million has exactly the standing of a wallet holding one hundred thousand, and there is no rank
  above it for sale at any price.
- **A vote is per seat, not per token.** Docket voting is not built yet, and this is the commitment
  made before it is: one seat, one vote. Holding ten times the tokens will not buy ten times the say.
- **Luminary cannot be bought at all.** It is granted for a petition the Council canonises.
- **Priority costs supply.** An Offering is a burn to the dead address. Anyone wanting to jump the
  queue must destroy tokens to do it, which is the opposite of accumulating them to sell.

None of that stops a price rising and then falling. It means no amount of money buys authority.

And the largest holder is the founder, not a stranger, which is why the concentration is the first
section of this document rather than a footnote.

<br/>

## Standing: what holding actually gets you

The only mechanism the token has. Full statement at [qzen.dev/standing](https://qzen.dev/standing),
where the balance is read from Base and the block it was read at is printed beside it.

<div align="center">

| Rank | Threshold | What it grants |
|---|---|---|
| **Petitioner** | 0 QZEN | Submit into the open pool. Heard only if selected |
| **Citizen** | 1,000 QZEN | A guaranteed hearing, a numbered seat, a vote on the docket |
| **Elder** | 100,000 QZEN | Sets the docket, and a standing right of dissent |
| **Luminary** | Earned | Canonised petitions only. Cannot be bought |

</div>

**Petitioning is free and stays free.** Standing buys priority, never access, and that distinction is
what lets the disclaimer say QZEN is not an investment and gets you heard, nothing more.

<br/>

## Liquidity, stated accurately

<div align="center">

| | Detail |
|---|---|
| **Pool** | Uniswap V3, QZEN paired with WETH on Base |
| **QZEN in the pool** | `57,212.5`, which is 0.0572% of supply |
| **Lock status** | **Unlocked.** The Unicrypt lock ran to 2026-07-04 and was deliberately not renewed |
| **Since then** | The pool has been left untouched by choice, not by chain |
| **Trading volume** | None. There is no price to quote, and the site says "No market" rather than showing a spinner |

</div>

The previous version of this file said the pool was locked and that a rug pull was therefore
impossible. Both halves were wrong: the lock had expired, and with the supply where it is, "no admin
functions" prevents a contract level exploit but not a sale.

<br/>

## The intended distribution, which has NOT happened

Kept because it is the plan of record, and labelled because it is not a description of today. As the
table at the top shows, none of it has been executed: the tokens are in one wallet.

<div align="center">

| Allocation | Intended share | Status |
|---|---|---|
| Public distribution | 35% | Not executed |
| Founders | 20% | Not executed. **There is no vesting contract**, and none can be added to an immutable token |
| Community and Council treasury | 20% | Not executed. There is no treasury wallet and no governance contract |
| Liquidity | 15% | Not executed. Actual pool holds 0.0572% |
| Team and advisors | 10% | Not executed |

</div>

The distribution work is deferred rather than in progress, and the founder deprioritised it on
2026-08-16 in favour of making the site do something. Saying "vested four years" and
"community controlled" about tokens sitting in a single EOA was the worst thing in this repository,
so it is now stated as an intention with its actual status attached.

<br/>

## Who pays for this

There is no company. QZEN pays no yield and shares no revenue, the site takes no money from anyone,
and nothing on qzen.dev is behind a payment.

The domain, the hosting and the work are paid for by the founder out of pocket. The whole thing is
deliberately built to cost almost nothing to run, which is the only reason a project with no revenue
keeps running.

The founder also holds almost all of the supply, and that has one honest implication worth stating.
If QZEN ever came to be worth something, that holding is what would fund the work. If it never does,
the work is paid for out of pocket or it stops.

**That is a disclosure, not an invitation.** Nobody here will tell you QZEN will be worth more later,
because nobody here knows, and anyone who does tell you that is selling you something. No yield, no
revenue share, no buyback, no floor.

<br/>

## The honest value statement

Verbatim from the site, and the closest thing this project has to a thesis.

> QZEN pays no yield. It shares no revenue. It promises no return, and nobody here will tell you it
> will be worth more later.
>
> Two things, and only two things, support it. The supply falls every time someone makes an Offering,
> and it cannot rise, ever. And the right to be heard by the Council must be held, not rented. If the
> Twelve become something people want answers from, those two facts will matter. If they do not,
> those two facts will not save it.
>
> That is the entire thesis. Anyone who tells you more than that about a token is selling you
> something.

<br/>

## Check any of this yourself

The site publishes machine readable feeds with no generated timestamps, so they only change when
something actually happens.

<div align="center">

| Feed | What it holds |
|---|---|
| [`/verdicts.json`](https://qzen.dev/verdicts.json) | Every published deliberation, newest first |
| [`/initiates.json`](https://qzen.dev/initiates.json) | How many people have taken the Vow. Numbers and dates only, never anything about a person |
| [`/offerings.json`](https://qzen.dev/offerings.json) | Total QZEN burned, read from the Offering address's balance |
| [`/docket.json`](https://qzen.dev/docket.json) | What is queued for a hearing. Curated by hand, and usually empty |

</div>

Every deliberation transcript is also mirrored in this repository under
[`website/data/deliberations/`](website/data/deliberations/), byte for byte with what the site serves.

<br/>

---

<div align="center">

**QZEN is not a security, not an investment contract, and not financial advice.**
It is a symbolic citizenship token with one mechanism: it decides whether the Council hears you
first. Do your own research.

<br/>

[![Read the Canon](https://img.shields.io/badge/Read_the-Canon-34f5a4?style=flat-square)](https://qzen.dev/canon)
[![Begin the Rite](https://img.shields.io/badge/Begin_the-Rite-34f5a4?style=flat-square)](https://qzen.dev/join)
[![QZEN on Uniswap](https://img.shields.io/badge/QZEN_on-Uniswap-FF007A?style=flat-square&logo=uniswap&logoColor=white)](https://app.uniswap.org/swap?outputCurrency=0x7F1f50563541A722469B8b2e6e24faD7Dc07d5fE&chain=base)

</div>

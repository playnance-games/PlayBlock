# Playblock chain specs

## Testnet
- **Chain name:** Arbitrum Blueberry
- **Chain ID:** 88153591557
- **RPC JSON:** https://rpc.arb-blueberry.gelato.digital | wss://ws.arb-blueberry.gelato.digital
- **Explorer:** https://arb-blueberry.gelatoscout.com
- **Game Token Address:** 0x73C3cDd1418c3F17D54A81148387d93122802E72
- **Game Token Name:** USDP
- **Game Token Decimals:** 2
- **Fun Game Token Address:** 0x38e86d1dD957619aa199BbAD0027DE3C410B2754
- **Fun Game Token Name:** USDB
- **Fun Game Token Decimals:** 2
- **Gas token Name:** CGT
- **Faucet for gas tokens:** https://raas.gelato.network/rollups/details/public/arb-blueberry
- **Jackpot Address:** 0x44b4fB3e36D1972E5B58f4c0f97A632C194fb42D
- **Fun Jackpot Address:** 0x6784847B90fb14561A69A7ab2F716Cb113233612

### Pools:
#### 30:15 Pool
- **Timing:** 30:15

- **Smart contract:** 0xd0a5539bC3d7f5802A175B85E4A26edcDEBacE92

- **Round notifications:** wss://integration-updates-streamer.blitzbinary.com/sub?id=update_upvsdown_round_int_gelato

#### 30:30 Pool

- **Timing:** 30:30

- **Smart contract:** 0x202973C8f227bb819df3Fed4c17215124D366756

- **Round notifications:** wss://integration-updates-streamer.blitzbinary.com/sub?id=update_upvsdown_round_int_gelato_2

#### 15:30 Fun Pool

- **Timing:** 15:30

- **Smart contract:** 0x7e6309D1513527DA9BCCe05B7C7a1B5d60675271

- **Round notifications:** wss://integration-updates-streamer.blitzbinary.com/sub?id=update_upvsdown_round_int_demo_v8_1

#### 30:60 Fun Pool

- **Timing:** 30:60

- **Smart contract:** 0x289CCA4C020a93bc3F95c1bD31CFB9E9023686a9

- **Round notifications:** wss://integration-updates-streamer.blitzbinary.com/sub?id=update_upvsdown_round_int_demo_v8_2

## Mainnet
- **Chain name:** Playblock
- **Chain ID:** 1829
- **RPC JSON:** Ask Playnance
- **Explorer:** https://explorer.playblock.io
- **Game Token Address:** 0x73C3cDd1418c3F17D54A81148387d93122802E72
- **Game Token Name:** USDP
- **Game Token Decimals:** 2
- **Fun Game Token Address:** 0x34fdc6f5B4e1fFD14fDf86F729c6b7973eA381C5
- **Fun Game Token Name:** USDB
- **Fun Game Token Decimals:** 2
- **Gas token Name:** PBG
- **Faucet for gas tokens:** https://www.playnance.com/gas-station.html

### USDP Pools:
#### 15:30:BTC Pool
- **Timing:** 15:30 [15 seconds for placing trades , 30 seconds for expiry]

- **Pool ID:** 15:30:btc

- **Smart contract:** 0xAA508Fb0661940fb4D9717cEc03652056f4D38B5

- **Round notifications:** wss://ds.playblock.io/sub?id=update_upvsdown_round_prod_v7_1

#### 30:60:BTC Pool

- **Timing:** 30:60 [30 seconds for placing trades , 60 seconds for expiry]

- **Pool ID:** 30:60:btc

- **Smart contract:** 0x883f9fFEaec18097364aFF3BeDCa144b97d79b1d

- **Round notifications:** wss://ds.playblock.io/sub?id=update_upvsdown_round_prod_v7_2

#### 15:05:BTC Pool

- **Timing:** 15:05 [15 seconds for placing trades , 5 seconds for expiry]

- **Pool ID:** 15:05:btc

- **Smart contract:** 0xAD8d5E8a201b49b2c7035Ea0f01875951297c213

- **Round notifications:** wss://ds.playblock.io/sub?id=update_upvsdown_round_prod_v7_3

#### 15:15:BTC Pool

- **Timing:** 15:15 [15 seconds for placing trades , 15 seconds for expiry]

- **Pool ID:** 15:15:btc

- **Smart contract:** 0x8e22c463277b0Baefd24cE83442933144A97c618

- **Round notifications:** wss://ds.playblock.io/sub?id=update_upvsdown_round_prod_v7_4

#### 30:120:BTC Pool
- **Timing:** 30:120 [30 seconds for placing trades , 120 seconds for expiry]

- **Pool ID:** 30:120:btc
  
- **Smart contract:** 0x7f48977a9a05C05DE5D31F676740a8fef916f0A9
  
- **Round notifications:** wss://ds.playblock.io/sub?id=update_upvsdown_round_prod_v8_5

### USDB Pools:
#### 15:30:BTC Pool
- **Timing:** 15:30 [15 seconds for placing trades , 30 seconds for expiry]

- **Pool ID:** 15:30:demo:btc

- **Smart contract:** 0x0146aefd2d5fa992482661394e1C1c442b754E0E

- **Round notifications:** wss://ds.playblock.io/sub?id=update_upvsdown_round_prod_demo_v8_1

#### 30:60:BTC Pool

- **Timing:** 30:60 [30 seconds for placing trades , 60 seconds for expiry]

- **Pool ID:** 30:60:demo:btc

- **Smart contract:** 0x010E122c7479752D674a3be57AE6Df3B20228b00

- **Round notifications:** wss://ds.playblock.io/sub?id=update_upvsdown_round_prod_demo_v8_2

#### 15:05:BTC Pool

- **Timing:** 15:05 [15 seconds for placing trades , 5 seconds for expiry]

- **Pool ID:** 15:05:demo:btc

- **Smart contract:** 0xf2035f3adc5F2a1Bcb5dF9D0A87fC93786e953f7

- **Round notifications:** wss://ds.playblock.io/sub?id=update_upvsdown_round_prod_demo_v8_3

#### 15:15:BTC Pool

- **Timing:** 15:15 [15 seconds for placing trades , 15 seconds for expiry]

- **Pool ID:** 15:15:demo:btc

- **Smart contract:** 0xaB88d8D8A1D3Bb75d6961f26E55fbc5DF93077a3

- **Round notifications:** wss://ds.playblock.io/sub?id=update_upvsdown_round_prod_demo_v8_4

#### 30:120:BTC Pool
- **Timing:** 30:120 [30 seconds for placing trades , 120 seconds for expiry]

- **Pool ID:** 30:120:demo:btc
  
- **Smart contract:** 0xB2290317326edB97d51aA978630D2DBB9e000841
  
- **Round notifications:** wss://ds.playblock.io/sub?id=update_upvsdown_round_prod_demo_v8_5


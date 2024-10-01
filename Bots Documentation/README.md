### Summary

This documentation provides a comprehensive guide to creating an automated trading bot for placing trades in the UpVsDown game using the Playnance Game Token (USDP) or the Playnance Meme Token (USDB). The bot is designed to interact with a smart contract and automate trade placements based on a predefined strategy.

#### Contents:

1. **Introduction**

   - **Overview:**
     In the UpVsDown game, the user can place trades by connecting their wallet, selecting the pool, choosing the investment amount, and clicking the UP or DOWN button during the place trade phase. The game consists of rounds, and each round has a time for placing trades and a time for expiry, depending on the selected pool.

   - **Purpose of the Bot:**
     If you are familiar with programming languages like Node.js, you can build a bot that will place trades automatically. The bot will use the private key of the wallet and place trades automatically according to your strategy. For placing trades, the bot will use a wallet address with USDP or USDB (depending on which pool it is running). You should fund the wallet with enough tokens. You can buy USDP with a credit card or bridge from other cryptocurrency.

   - **Example Code:**
     Under the `src` folder, there is a full example of a working bot that places trades with a random amount and random direction.
2. **Running the Bot**

   - **Example `.env` file:**
     ```plaintext
     RPC_PROVIDER=https://lb.drpc.org/ogrpc?network=playnance&dkey=AmsA2632Wk99pZ1Ym7OZe_uAtto4OHAR76bPhkHL9tz4
     PK=YOUR PRIVATE KEY
     ROUND_NOTIFICATIONS=wss://ds-proxy.playblock.io/sub?id=update_upvsdown_round_prod_v7_3
     SMART_CONTRACT_ADDRESS=0xAD8d5E8a201b49b2c7035Ea0f01875951297c213
     TOKEN_ADDRESS=0x73C3cDd1418c3F17D54A81148387d93122802E72
     POOL_ID=15:05:btc
     AVATAR_URL=https://storage.googleapis.com/betcioproduction/bit_logo.jpg
     COUNTRY_CODE=UK
     WHITE_LABEL_ID=b01oz
     ```

   - **Running the Bot with Docker:**
     To run the bot using Docker, follow these steps:

     1. **Build the Docker Image:**
        ```bash
        docker build -t trading-bot .
        ```

     2. **Run the Docker Container:**
        ```bash
        docker run --env-file .env trading-bot
        ```

     Ensure that you have the `.env` file in the same directory as your Dockerfile or provide the full path to the `.env` file.

3. **Configuration Parameters:**

   Detailed explanation of the configuration parameters:

   - **RPC_PROVIDER:** The RPC provider URL to interact with the PlayBlock chain.
   - **PK:** The private key of the wallet to be used for placing trades.
   - **ROUND_NOTIFICATIONS:** The WebSocket URL to listen for round phases. Trades can be placed only during the PlaceTradePhase.
   - **SMART_CONTRACT_ADDRESS:** The address of the smart contract used for placing trades.
   - **TOKEN_ADDRESS:** The address of the token contract (USDP or USDB).
   - **POOL_ID:** The ID of the pool where trades will be placed.
   - **AVATAR_URL:** URL of the avatar image to be used.
   - **COUNTRY_CODE:** The country code (ALPHA 2) of the user.
   - **WHITE_LABEL_ID:** You should get the code by clicking the Generate Bot Key button in this page: https://moonxp.com/developers

   All the settings of the blockchain can be found here: [PlayBlock Game Tech Specs](https://github.com/playnance-games/PlayBlock/blob/main/Game_tech_specs.md#mainnet)

   The configuration of the pools is dynamic. The config can be fetched from this public endpoint:
   https://api.playblock.io/v1/config/pools

   There are 2 groups of pools:
   * Real pools. Users placing bets with USDP.
   * Demo pools. Users placing bets with USDB.

   For each pool you can get its poolId,contractAddress,downtime,duration,investments,roundStateChannel.
   * poolId: The name of the pool
   * contractAddress: The smart contract address on the PlayBlock chain
   * downtime: How many seconds the user has to place bet.
   * duration: How many seconds the user has to place bet.
   * investments: The investments for the pool. Your bet amount should be higher than first investment amount in the array and lower than the last investment amount in the array.
   * roundStateChannel: Websocket notification channel where you can get the current state of the round.
   

5. **Advanced Usage**
   - With the provided example code, you can create different strategies, run multiple trades, and use USDP and USDB tokens on other pools.
   - The bot can be run locally or deployed to cloud providers like AWS, GCP, Azure, etc.
   - Best practice for storing the private key is using KMS and pulling the private key from there.

### Additional Information
- Every pool has a minimum and maximum investment setting. Ensure to adhere to these limits when configuring your bot.

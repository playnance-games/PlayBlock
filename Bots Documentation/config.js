import dotenv from 'dotenv';
dotenv.config();

export default {
    rpcProvider: process.env.RPC_PROVIDER,
    privateKey: process.env.PK,
    contractAddress: process.env.SMART_CONTRACT_ADDRESS,
    tokenAddress: process.env.TOKEN_ADDRESS,
    poolId: process.env.POOL_ID,
    avatarUrl: process.env.AVATAR_URL,
    countryCode: process.env.COUNTRY_CODE,
    whiteLabelId: process.env.WHITE_LABEL_ID, 
    roundNotifications: process.env.ROUND_NOTIFICATIONS,
    abi: [
      {
        "inputs": [
          {
            "components": [
              { "internalType": "bytes", "name": "poolId", "type": "bytes" },
              { "internalType": "string", "name": "avatarUrl", "type": "string" },
              { "internalType": "string", "name": "countryCode", "type": "string" },
              { "internalType": "bool", "name": "upOrDown", "type": "bool" },
              { "internalType": "string", "name": "whiteLabelId", "type": "string" },
              { "internalType": "uint256", "name": "amount", "type": "uint256" }
            ],
            "internalType": "struct UpVsDownGameV8.makeTradeStruct",
            "name": "userTrade",
            "type": "tuple"
          }
        ],
        "name": "makeTrade",
        "outputs": [],
        "stateMutability": "payable",
        "type": "function"
      }
    ],
    tokenAbi: [
        {
          "constant": false,
          "inputs": [
            {
              "name": "_spender",
              "type": "address"
            },
            {
              "name": "_value",
              "type": "uint256"
            }
          ],
          "name": "approve",
          "outputs": [
            {
              "name": "",
              "type": "bool"
            }
          ],
          "type": "function"
        }
      ]
  };
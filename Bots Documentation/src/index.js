import { ethers } from 'ethers';
import config from './config.js';
import WebSocket from 'ws';

const provider = new ethers.JsonRpcProvider(config.rpcProvider);
const wallet = new ethers.Wallet(config.privateKey, provider);

const contract = new ethers.Contract(config.contractAddress, config.abi, wallet);
const tokenContract = new ethers.Contract(config.tokenAddress, config.tokenAbi, wallet);

let firstRun = true;

//Main
initialize();

async function initialize() {
    await setAllowance();
    connectWebSocket();
}

function connectWebSocket() {
  const ws = new WebSocket(config.roundNotifications);

  ws.on('open', () => {
    console.log('WebSocket connection opened');
    setInterval(() => ws.ping(), 60000); // Ping every minute
  });

  ws.on('message', (data) => {

    const message = JSON.parse(data);
    const { methodName, params } = message;
    console.log(message); console.log(methodName);

    if (methodName === 'trigger') {
      const { currentState } = params;
        console.log('state=',currentState);
      if (currentState === 'ExpirationPhase') {
        firstRun = false;
      } else if (currentState === 'PlaceTradePhase') {
        if (!firstRun){
            setTimeout(() => placeTrade(), 3000); //Place trade 3 seconds after round starts
        }
      }
    }
  });

  ws.on('close', () => {
    console.log('WebSocket connection closed. Reconnecting...');
    setTimeout(connectWebSocket, 1000); // Reconnect after 1 second
  });

  ws.on('error', (error) => {
    console.error('WebSocket error:', error);
    ws.close(); // Close the connection and trigger reconnect
  });
}

async function placeTrade() {
  try {
    const minTrade = 1;
    const maxTrade = 10;    

    //Trade amount should be between MIN and MAX for each poo otherwise it will fail
    const randomInvestment = Math.round(Math.random() * (maxTrade - minTrade) + minTrade);

    //0 is trade DOWN
    //1 is trade UP
    const randomdDirection = Math.floor(Math.random() * 2);

    const tx = await contract.makeTrade({
      poolId: "0x" + Buffer.from(config.poolId, "utf8").toString("hex"),
      avatarUrl: config.avatarUrl,
      countryCode: config.countryCode,
      upOrDown: randomdDirection,
      whiteLabelId: config.whiteLabelId,
      amount: randomInvestment * 10 ** 2 // USDP/USDB defined with 2 decimals
    });
    const receipt = await tx.wait();
    console.log('Trade placed:', receipt);
  } catch (error) {
    console.error('Error placing trade:', error);
  }
}

export async function setAllowance() {
    try {
      const maxAllowance = ethers.MaxUint256;
      const tx = await tokenContract.approve(config.contractAddress, maxAllowance);
      await tx.wait();
      console.log('Allowance set to maximum');
    } catch (error) {
      console.error('Error setting allowance:', error);
    }
  }
# Playnance Wallet Connect Integration Guide

Playnance Wallet Connect is a simple and secure protocol for implementing single sign-on (SSO) between a main application and an iframe. This guide provides a brief overview of the protocol and steps for integrating it into your project.

### Introduction
The Playnance Wallet Connect package allows you to seamlessly link user authentication between your main app and an embedded iframe. It uses secure communication channels to facilitate token-based authentication, ensuring a smooth user experience without the need for multiple logins.

### Key Features
- **Single Sign-On (SSO)**: Enables users to authenticate in the main app and access the iframe without re-entering credentials.
- **Secure Communication**: Uses token-based authentication to securely share user details.
- **Easy Integration**: Simple setup and usage through the Playnance Wallet Connect package.

### Installation
To install the package, use the following command:

```bash
npm install playnance-wallet-connect
```

### Usage
To integrate Playnance Wallet Connect, import it into your project and set up the authentication flow between the main app and iframe.

```javascript
import { WalletConnect } from 'playnance-wallet-connect';

// Example usage
theMainApp.setupWalletConnect({
  iframeUrl: 'https://your-iframe-url.com',
  authCallback: (userDetails) => {
    console.log('Authenticated user:', userDetails);
  }
});
```

For detailed documentation and further guidance, visit [Playnance Wallet Connect on npm](https://www.npmjs.com/package/playnance-wallet-connect/v/1.1.3).

### Documentation
Please visit the complete documentation for detailed instructions and advanced configuration:
[https://www.npmjs.com/package/playnance-wallet-connect](https://www.npmjs.com/package/playnance-wallet-connect)

### Support
For any issues or questions, please refer to the documentation or open an issue on GitHub.

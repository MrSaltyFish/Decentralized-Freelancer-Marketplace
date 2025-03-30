@echo off
setlocal

:: Set the root directory name
set ROOT_DIR=decentralized-freelancer-marketplace

:: Create main project directories
mkdir %ROOT_DIR%
cd %ROOT_DIR%
mkdir frontend smart-contracts backend deploy .github

:: Create frontend directory structure
cd frontend
mkdir public src
cd src
mkdir components pages context utils styles contracts
cd ..
echo {} > package.json
echo {} > next.config.js
echo # Frontend Documentation > README.md
echo API_KEYS= > .env
cd ..

:: Create smart-contracts directory structure
cd smart-contracts
mkdir contracts scripts test
cd contracts
echo // Solidity Escrow Contract > Escrow.sol
echo // Solidity Reputation Contract > Reputation.sol
cd ..
echo {} > package.json
echo // Hardhat Configuration > hardhat.config.js
echo # Smart Contract Documentation > README.md
echo PRIVATE_KEYS= > .env
cd ..

:: Create backend directory structure
cd backend
mkdir models routes controllers
cd ..
echo {} > backend/package.json
echo // Express Server > backend/server.js
echo # Backend Documentation > backend/README.md
echo BACKEND_ENV= > backend/.env

:: Create deployment scripts
cd deploy
echo #!/bin/bash > frontend-deploy.sh
echo // Hardhat Deployment Script > contract-deploy.js
cd ..

:: Create GitHub Actions workflows
cd .github
mkdir workflows
cd workflows
echo # Deploy frontend to Vercel > frontend-deploy.yml
echo # Deploy contracts to Polygon Testnet > contract-deploy.yml
cd ..
cd ..

echo # Main Documentation > README.md
echo node_modules/ > .gitignore

echo Project structure created successfully!
exit

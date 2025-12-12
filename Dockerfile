FROM node:20-bullseye

WORKDIR /usr/src/app

COPY package.json ./
RUN npm install --legacy-peer-deps --no-audit --no-fund

COPY . .

RUN npx hardhat compile

CMD ["npx", "hardhat", "test"]

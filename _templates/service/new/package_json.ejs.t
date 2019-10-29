---
to: <%=h.changeCase.snakeCase(name)%>/package.json
---

{
  "name": "atom",
  "version": "1.0.0",
  "description": "My Moleculer microservices project",
  "scripts": {
    "build": "tsc",
    "dev": "npm run nodemon & npm run start-service",
    "start-service": "npm run build && ts-node ./node_modules/moleculer/bin/moleculer-runner.js --hot --repl --config moleculer.config.ts services/*.service.ts",
    "nodemon": "./node_modules/nodemon/bin/nodemon.js --config nodemon.json --exec npm run build",
    "cli": "moleculer connect NATS",
    "start": "moleculer-runner services",
    "ci": "jest --watch",
    "test": "jest --coverage",
    "lint": "tslint -p tsconfig.json",
    "dc:up": "docker-compose up --build -d",
    "dc:down": "docker-compose down"
  },
  "keywords": [
    "microservices",
    "moleculer"
  ],
  "author": "",
  "devDependencies": {
    "@types/bluebird": "^3.5.24",
    "@types/node": "^10.12.12",
    "tslint": "^5.11.0",
    "@types/jest": "^23.1.1",
    "jest": "^23.6.0",
    "jest-cli": "^23.6.0",
    "ts-jest": "^23.10.5",
    "moleculer-repl": "^0.5.3",
    "ts-node": "^7.0.1",
    "typescript": "^3.2.2",
    "nodemon": "^1.19.4"
  },
  "dependencies": {
    "ioredis": "^4.2.0",
    "moleculer": "next",
    "moleculer-db": "^0.8.2",
    "moleculer-web": "^0.8.5",
    "nats": "^1.0.1"
  },
  "engines": {
    "node": ">= 8.x.x"
  },
  "jest": {
    "coverageDirectory": "<rootDir>/coverage",
    "testEnvironment": "node",
    "moduleFileExtensions": [
      "ts",
      "tsx",
      "js"
    ],
    "transform": {
      "^.+\\.(ts|tsx)$": "ts-jest"
    },
    "testMatch": [
      "**/*.spec.(ts|js)"
    ],
    "globals": {
      "ts-jest": {
        "tsConfig": "tsconfig.json"
      }
    }
  }
}
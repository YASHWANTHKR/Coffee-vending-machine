# Coffee Vending Machine

## Authors
- Yashwanth KR (221EC264)
- Raghavendra Y (221EC262)

## Introduction
A coffee vending machine is designed to dispense coffee to customers automatically after the insertion of currency. This project aims to facilitate large-scale retailing by placing coffee vending machines in convenient locations such as near companies. The machine operates 24/7 and reduces labor requirements.

## Assumptions
- The cost per coffee is 20 rupees.
- The vending machine accepts inputs of 5 Rs, 10 Rs, 15 Rs, and 20 Rs represented as:
  - 5 Rs: 00
  - 10 Rs: 01
  - 15 Rs: 10
  - 20 Rs: 11
- If the inserted money exceeds 20 Rs, the vending machine will return the extra amount.
- The machine will return change in denominations of 5 Rs, 10 Rs, and 15 Rs represented as:
  - 5 Rs: 01
  - 10 Rs: 10
  - 15 Rs: 11

## State Table

| Present State | Input Money | Next State | Coffee | Balance |
|---------------|-------------|------------|--------|---------|
| A             | 00          | B          | 0      | 00      |
| A             | 01          | C          | 0      | 00      |
| A             | 10          | D          | 0      | 00      |
| A             | 11          | A          | 1      | 00      |
| B             | 00          | C          | 0      | 00      |
| B             | 01          | D          | 0      | 00      |
| B             | 10          | A          | 1      | 01      |
| B             | 11          | A          | 1      | 10      |
| C             | 00          | D          | 0      | 00      |
| C             | 01          | A          | 1      | 00      |
| C             | 10          | A          | 1      | 01      |
| C             | 11          | A          | 1      | 10      |
| D             | 00          | A          | 1      | 00      |
| D             | 01          | A          | 1      | 01      |
| D             | 10          | A          | 1      | 10      |
| D             | 11          | A          | 1      | 11      |

## State Diagram
![state diagram](https://github.com/YASHWANTHKR/Coffee-vending-machine/blob/main/state%20diagram.jpg)


## Usage
1. Insert currency into the vending machine.
2. The machine will check the inserted amount.
3. If the amount is equal to or exceeds 20 Rs, coffee will be dispensed.
4. Any excess amount will be returned as change.
5. If the amount is less than 20 Rs, the machine will wait for additional currency input.

[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/TxdISlDZ)
[![Open in Visual Studio Code](https://classroom.github.com/assets/open-in-vscode-2e0aaae1b6195c2367325f4f02e2d04e9abb55f0b24a779b69b11b9e10269abc.svg)](https://classroom.github.com/online_ide?assignment_repo_id=16903986&assignment_repo_type=AssignmentRepo)
# ecen_5813_assignment6_f24

## Overview

In this assignment, I implement a command processor using USART2, circular buffers, and interrupts. The processor handles commands like `Echo`, `LED`, and `HEXDUMP` with responses sent over USART2.

## Setup

1. **USART Configuration**: The USART parameters (19200 baud, 8 data bits, odd parity, 1 stop bit) are set in `init_function.h`. Modify this file to change the settings.
2. **Circular Buffers**: Two static circular buffers (128 bytes each) are implemented for transmit and receive, ensuring non-blocking communication.
3. **Command Processor**: The processor reads commands from USART2, echoes input, and executes recognized commands like `Echo`, `LED ON/OFF`, and `HEXDUMP`.

## Command List

- `Echo [String]`: Echoes the string in uppercase.
- `LED [ON/OFF]`: Turns the user LED on/off.
- `HEXDUMP [Start] [Len]`: Dumps memory in hex format.

## Screenshots
Screenshots of terminal session and configuration are available in the  folder. Commands tested include:

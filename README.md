# 🥤 TC22 – Vending Machine in VHDL

This project implements a **sequential digital system** for controlling a **vending machine** using the VHDL language. It was developed as part of the **Computer Technology** course at **URJC (GIC - Móstoles Campus)**. The goal is to strengthen the understanding of sequential circuit design and simulation using tools such as ModelSim.

---

## 🧠 Objective

- Design and simulate a **synchronous finite state machine (FSM)** that controls the sale of drinks priced at 2€.
- Implement **three different versions** of the FSM:
  1. Using **D-type flip-flops**
  2. Using **J-K flip-flops**
  3. Using only the **state diagram**
- Verify through simulation that all versions behave equivalently.

---

## 🔌 System Signals

| Signal     | Direction | Description                                       |
|------------|-----------|---------------------------------------------------|
| `CLK`      | Input     | Clock signal for system synchronization           |
| `RST`      | Input     | Synchronous reset signal                          |
| `COIN_IN`  | Input     | Indicates the inserted coin or bill (1€, 2€, 5€) |
| `COIN_OUT` | Output    | Indicates the amount of change returned           |
| `LATA`     | Output    | Activates the release mechanism for the drink     |

---

## 🧪 Simulation

- Simulations were run using **ModelSim** or **GHDL + GTKWave**.
- The testbench simulates:
  - All possible input combinations for `COIN_IN`
  - Simultaneous evaluation of FSM_D, FSM_JK, and direct FSM implementations
  - Common clock/reset signals and independent outputs per implementation

### Testbench

- `TC22_testbench.vhd` generates the `CLK`, `RST`, and coin insertion sequence.
- Enables visual comparison of the three implementations to ensure **behavioral equivalence**.

---

## 🧑‍💻 Author

**Isam El Mourabet**  
Computer Engineering Student – URJC (Móstoles Campus)

---

> 💡 *"A good digital design starts with a good state model."*

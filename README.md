# Digital Signal Processing (DSP) Modules

[![Language](https://img.shields.io/badge/Language-Verilog-blue.svg)](https://www.verilog.com/) [![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

---

## 📖 Introduction

This repository contains a configurable **DSP slice** implemented in Verilog HDL. It supports pipelined arithmetic operations including:

* **Pre‑Adder**
* **Multiplier**
* **Post‑Adder**

The design targets FPGA-based applications and can be easily integrated into larger systems for high-performance digital signal processing tasks.

---

## 🚀 Features

* **Fully Pipelined**: Configurable pipeline stages for high throughput.
* **Configurable Data Width**: Supports 18×18 and 36×36 multiplication modes.
* **Modular Design**: Separate modules for pre‑adder, multiplier, and post‑adder.
* **Testbenches Included**: Comprehensive Verilog and SystemVerilog testbenches.
* **FPGA Support**: Constraints provided for Xilinx Vivado.

---

## 📂 Directory Structure

```
├── rtl/                  # RTL source files
│   ├── pre_adder.v      # Pre‑adder module
│   ├── multiplier.v     # Multiplier module
│   ├── post_adder.v     # Post‑adder module
│   └── dsp_slice.v      # Top‑level DSP slice wrapper
├── verification/        # Testbenches
│   ├── dsp_tb.v         # Verilog testbench
│   └── dsp_tb.sv        # SystemVerilog testbench
├── constraints/         # FPGA constraints (XDC for Vivado)
│   └── dsp_slice.xdc    # Pin assignments and timing constraints
├── docs/                # Documentation and reports
│   └── coverage/        # Coverage reports (HTML/PDF)
├── images/              # Simulation waveforms and block diagrams
│   └── waveform.png     # Example output waveform
├── .gitattributes       # Force linguist to treat `.v` as Verilog
├── LICENSE              # Project license (MIT)
└── README.md            # Project overview and instructions
```

---

## 🔧 Getting Started

### Prerequisites

* **Verilog Simulator**: Icarus Verilog, ModelSim, or QuestaSim
* **FPGA Toolchain**: Xilinx Vivado 2020.2 or later (for synthesis)
* **Make** (optional): For simplified build scripts

### Installation & Build

1. **Clone the repository**

   ```bash
   git clone https://github.com/Eng-AbdallahSabah/Digital-Signal-Processing-Modules.git
   cd Digital-Signal-Processing-Modules
   ```

2. **Run simulation**

   ```bash
   make sim
   ```

3. **Synthesize for FPGA** (Vivado)

   ```bash
   vivado -mode batch -source build_synth.tcl
   ```

---

## 🧪 Simulation & Verification

1. **Verilog Testbench**

   ```bash
   iverilog -o dsp_tb rtl/*.v verification/dsp_tb.v
   vvp dsp_tb
   ```
2. **SystemVerilog Testbench**

   ```bash
   vcs -sverilog rtl/*.v verification/dsp_tb.sv -R
   ```

![Waveform Example](https://github.com/Eng-AbdallahSabah/Digital-Signal-Processing-Modules/blob/main/images/Wave%20form.png)

Coverage reports are available in `docs/coverage/`.

---

## 📈 Synthesis & Implementation

* Constraints file: `constraints/dsp_slice.xdc`
* Top‑level entity: `dsp_slice`
* Clock frequency target: 200 MHz (pipelined)

---

## 🤝 Contributing

Contributions are welcome! Please follow these steps:

1. Fork the repository.
2. Create a feature branch: `git checkout -b feature/YourFeature`.
3. Commit your changes: `git commit -m "Add YourFeature"`.
4. Push to the branch: `git push origin feature/YourFeature`.
5. Open a Pull Request.

Please read [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

---

## 📜 License

This project is licensed under the **MIT License**. See the [LICENSE](LICENSE) file for details.

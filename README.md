# Programmable-Logic-Embedded-System-Deisgn
## PROJECT 1: FPGA Design Flow in Quartus and NIOS II soft processor applications
### Project Overview:
This repository contains the code and documentation for the Embedded Systems Lab project. The project is divided into three modules, each focusing on different aspects of embedded systems design using Quartus Prime, Qsys, and Nios II processor.

### Modules:
### Module 1: Develop a Mixed-Signal System:
### Procedure:
- PWM: Generate PWM signals using switches for duty cycle control.
- ADC: Add an ADC module in Qsys, interfacing JTAG for debugging and displaying ADC output on 7-segment displays.

### Module 2: DISPLAY HELLO WORLD AND TOGGLE LEDS USING NIOS II AND Q SYS
### Procedure:
- Design hardware system using Qsys, including components like Nios II Processor, memory, UART, switches, LEDs, and push-buttons.
- Implement software application in Eclipse to display "Hello World" and control LEDs based on push-button presses.

### Module 3: CREATE A SYSTEM ON A CHIP WITH PROGRAMMABLE HARDWARE AND A SOFT PROCESSOR
### Procedure:
- Build a System-on-Chip (SoC) using MAX10 DE10-Lite development kit with Nios 2 as the soft processor.
- Integrate various components in Qsys, configure pin settings, and compile the hardware design.
- Develop software applications to utilize peripherals and display output.

### Lessons Learned: 
- Gain hands-on experience in FPGA hardware design, analog-to-digital conversion, and interfacing peripherals.
- Understand hardware-software interaction, signal mapping, and basic IO operations in FPGA designs.
- Create a System on a Chip with Programmable Hardware and a Soft Processor.
- Master clock management, peripheral interfaces, memory management, and FPGA design documentation.

### Conclusion:
In conclusion, the project provided practical insights into FPGA design, hardware-software integration, and system-on-chip development. Through three modules, we mastered PWM signal generation, ADC integration, Nios II programming, and system configuration using Qsys. We gained valuable hands-on experience, refining our skills in FPGA design, software development, and system testing. Overall, this project has equipped us with the essential knowledge and skills required for success in embedded systems engineering.

## PROJECT 2: SMARTFUSION2 APPLICATIONS
### Objective
The goal of this project is to explore FPGA development methodologies, timing analysis, application development with Microcontroller Sub-system (MSS), and Verilog module integration on various FPGA boards. Additionally, it includes an extra credit section on developing embedded Python applications on the Jupyter notebook of the Xilinx PYNQ board.

### Module 1: Timing Analysis and Design Implementation
### Procedure:
- Initiated projects in Libero SoC for three designs: 32-Bit Shift Register, Dual Edge Clock Design, and 16-Bit Binary Counter.
- Completed synthesis, placement, routing, and timing analysis.
- Adjusted timing constraints to eliminate violations.

### Module 2: Application Development with MSS
### Procedure:
- Developed sample applications utilizing GPIO pins.
- Configured GPIO pins and assigned physical pins using System Builder.
- Developed software code for controlling GPIO pins.
- Implemented debouncing algorithms for accurate button input recognition.

### Module 3: Verilog Module Integration and FPGA Board Capacity Assessment
### Procedure:
- Developed 16-bit counter module and integrated it into a top-level design.
- Tested the design on Altera MAX10 DE10-lite, DE1-SoC, and Microsemi SmartFusion2 Maker kit boards.
- Determined maximum counters achievable while meeting timing closure.

### Lessons Learned:
- Timing Analysis Importance: The project emphasized the critical role of timing analysis in FPGA development. Conducting both maximum and minimum timing delay analyses ensures designs comply with required timing constraints, thereby eliminating timing violations.
Frequency Impact: Understanding how frequency factors affect timing analysis and slack timings is crucial. Analyzing ideal frequency ranges helps maintain positive slack, optimizing design performance.
- Use of Cross-Probing: Employing Cross-Probing proved valuable for identifying timing issues and optimizing overall design performance. It facilitated efficient identification and resolution of timing problems.
- Configuring Embedded Systems: Developing applications for Microcontroller Sub-systems (MSS) and embedded Python applications required understanding the configuration process, system setup, and software development tools. It highlighted the importance of proficiency in these areas for efficient embedded system development.
FPGA Board Capacity Considerations: Evaluating FPGA board capacities is essential for selecting suitable platforms for specific applications. Understanding logic resource capacities and constraints across different boards ensures optimal utilization and scalability.

### Conclusion:
In conclusion, this project has equipped me with essential skills and knowledge in FPGA development and embedded systems, paving the way for future projects in these domains. The combination of theoretical understanding and practical implementation demonstrated the versatility and potential of FPGA-based solutions in various applications.


## PROJECT 3: DE1-SOC: Altera Cyclone V SoC
### Overview
This project aims to explore various aspects of DE1-SOC Altera Cyclone-V FPGA development and timing analysis. It consists of four modules, each targeting specific objectives related to FPGA development, digital circuit design, integration of peripherals, and timing analysis techniques.

### Objectives
- Gain proficiency in Quartus and the System-on-Chip Embedded Design Suite (SoC EDS).
- Implement digital circuits, including combinational and sequential designs.
- Integrate audio CODEC and real-time clock functionalities into the system.
- Perform embedded software development using C programming language.
- Understand FPGA-HPS connections and dynamic LED behavior.
- Develop and implement audio filters within the FPGA system.

### Procedure
- Set up Quartus and the necessary tools for DE1-SOC development.
- Examine Verilog/VHDL designs and system architectures.
- Integrate peripherals and configure the system using Qsys.
- Compile designs, conduct timing analysis, and program the FPGA fabric.
- Develop software programs for embedded systems and cross-compile for the target device.
- Capture test results and document the project progress for each module.

### Modules
1. Digital Circuit Design: Implement various digital circuits, including switch-LED mapping, multiplexers, counters, and real-time clock integration.
2. Audio CODEC Integration and Embedded Software Development: Integrate the audio CODEC into the system, implement FIR filters, and develop embedded software using C programming language.
3. FPGA-HPS Connection and Dynamic LED Behavior: Explore the connection between FPGA and HPS, configure dynamic LED behavior, and validate hardware and software configurations.
4. Implementation of Audio Filters: Design and implement audio filters such as low-pass, high-pass, and band-pass filters within the FPGA system.

### Lessons Learnt
- Efficient utilization of FPGA development tools and resources.
- Accurate identification of sampling frequencies and system parameters.
- Effective testing using emulators and simulation tools.
- Optimization of verification processes for larger designs.
- Exploration of existing FPGA references for improved implementation strategies.

### Conclusion
This project provided valuable insights into FPGA development, embedded systems, and hardware-software integration. It enhanced understanding of digital circuit design, audio processing, embedded software development, and FPGA-HPS connections, contributing to a comprehensive skill set in FPGA development.

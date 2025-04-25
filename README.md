Note-1: 
read the project file for full description: Running a complete RTL-to-logic design flow 
Introduction: 
In this Project, We will run a full RTL-to-logic design flow involving synthesis, timing and power analysis and verification. We will use open-source electronic design automation (EDA) tools and an open-source RISC-V microprocessor for this purpose. 
Digital circuits can be represented at different levels of abstraction. During the design process, a circuit is usually first specified using a higher-level abstraction. Implementation can then be understood as finding a functionally equivalent representation at a lower abstraction level. When this is done automatically using software, the term synthesis is used. In other words, synthesis is the automatic conversion of a high-level representation of a circuit to a functionally equivalent low-level representation of a circuit. In this course we are especially concerned about synthesis from the Register-transfer level (RTL) to a netlist at the logic level (Gates). 
Regardless of how a lower-level representation of a circuit is obtained (synthesis or manual design), the lower-level representation is usually verified for functional correctness. While simulation is widely used for verification, in recent years, formal equivalence checking has become a vital verification technique. 
Once the functional equivalence of the synthesized netlist is established, the timing requirements of the design must be checked. For example, an adder may add, but does it add fast enough? At the logic level the speed metric we are specifically concerned about is the clock period or cycle time which is inversely related to the clock frequency. A timing analyzer is used to verify that a given circuit meets a specific timing constraint, i.e., a target clock period. 
Power consumption has become a very important metric in virtually all integrated circuits designed today. Power analysis or estimation is the process of determining how much power is consumed by a given circuit. 

It is common to run synthesis, verification, timing, and power analysis in a loop to create an optimized implementation of the design that meets the desired constraints. 

This Project will consist of three steps: 
1.	RTL Synthesis 
2.	Functional Equivalence checking 
3.	Timing and Power Analysis 

We will use the following open-source materials: 
1.	Yosys: Open synthesis suite 
2.	OpenSta: Gate-level static timing and power analyzer 
3.	Skywater 130nm: Standard cell library 
4.	Verilog design files for an open-source 64-bit RISC-V CPU. 
 

Run the following command on your terminal: 
git clone https://github.com/sujay-pandit/ece-51216-tutorial.git 
cd ece-51216-tutorial; 

Note-2: 
Before proceeding further with this tutorial, make sure your “gcc” is picked from “/bin/gcc”. 
You can check this by executing “which gcc” on your terminal and modifying your PATH variable as necessary to make sure “/bin/gcc” appears first in your PATH. 
Part - I: Logic Synthesis 
Logic synthesis refers to the process of transforming RTL to a gate-level netlist. As discussed in class, it consists of two important steps: 
•	Converting RTL into an optimized technology-independent network of gates. 
•	Mapping those gates to actual technology-dependent logic gates contained in a technology library (standard cell library).
To achieve this, we will run Yosys with the following script: script_synthesis.ys, script_equivalence.ys, sta timingpower.tcl 


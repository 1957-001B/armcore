# Digilent Arty A7-100T Rev E (xc7a100tcsg324-1)
# Pin assignments from Digilent's Arty-A7-100-Master.xdc.
# Use this file for the design; keep the master file as a reference.

# Onboard 100 MHz oscillator.
set_property -dict { PACKAGE_PIN E3 IOSTANDARD LVCMOS33 } [get_ports { clk }]
create_clock -name sys_clk -period 10.000 [get_ports { clk }]

# BTN0: active-high user pushbutton, used as reset.
# This is NOT the dedicated active-low red RESET button.
# Synchronize the external reset in HDL before using it in clocked logic.
set_property -dict { PACKAGE_PIN D9 IOSTANDARD LVCMOS33 } [get_ports { reset }]

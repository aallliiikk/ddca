# Clock signal
set_property PACKAGE_PIN W5 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -period 10 -waveform {0 5} [get_ports clk]
# LEDs
set_property PACKAGE_PIN U15 [get_ports ledLeft[2]]
set_property PACKAGE_PIN W18 [get_ports ledLeft[1]]
set_property PACKAGE_PIN V19 [get_ports ledLeft[0]]
set_property PACKAGE_PIN U19 [get_ports ledRight[0]]
set_property PACKAGE_PIN E19 [get_ports ledRight[1]]
set_property PACKAGE_PIN U16 [get_ports ledRight[2]]
set_property IOSTANDARD LVCMOS33 [get_ports {ledLeft ledRight}]
# Buttons
set_property PACKAGE_PIN W19 [get_ports left]
set_property PACKAGE_PIN U18 [get_ports reset]
set_property PACKAGE_PIN T17 [get_ports right]
set_property IOSTANDARD LVCMOS33 [get_ports {left reset right}]
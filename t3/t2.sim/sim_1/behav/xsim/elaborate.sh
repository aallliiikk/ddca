#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2019.2 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Wed Mar 15 19:43:40 CET 2023
# SW Build 2708876 on Wed Nov  6 21:39:14 MST 2019
#
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
#
# usage: elaborate.sh
#
# ****************************************************************************
set -Eeuo pipefail
echo "xelab -wto 0e31c56ad01546438fb9878215bb961b --incr --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot FourBitAdder_behav xil_defaultlib.FourBitAdder xil_defaultlib.glbl -log elaborate.log"
xelab -wto 0e31c56ad01546438fb9878215bb961b --incr --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot FourBitAdder_behav xil_defaultlib.FourBitAdder xil_defaultlib.glbl -log elaborate.log

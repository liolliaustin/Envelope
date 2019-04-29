############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project Envelope_RTL
set_top envelope
add_files src/Envelope.cpp
add_files src/Envelope.h
add_files -tb src/Envelope_test.cpp
open_solution "solution1"
set_part {xc7z100ffg900-1} -tool vivado
create_clock -period 10 -name default
#source "./Envelope_RTL/solution1/directives.tcl"
csim_design -compiler clang
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog

@echo off
REM ****************************************************************************
REM Vivado (TM) v2019.2.1 (64-bit)
REM
REM Filename    : simulate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for simulating the design by launching the simulator
REM
REM Generated by Vivado on Fri May 15 11:38:14 -0500 2020
REM SW Build 2729669 on Thu Dec  5 04:49:17 MST 2019
REM
REM Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
REM
REM usage: simulate.bat
REM
REM ****************************************************************************
echo "xsim TB_AXI_Module_behav -key {Behavioral:AXI_Module:Functional:TB_AXI_Module} -tclbatch TB_AXI_Module.tcl -log simulate.log"
call xsim  TB_AXI_Module_behav -key {Behavioral:AXI_Module:Functional:TB_AXI_Module} -tclbatch TB_AXI_Module.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0

@echo off
REM ****************************************************************************
REM Vivado (TM) v2019.2.1 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Tue Jun 02 15:46:30 -0500 2020
REM SW Build 2729669 on Thu Dec  5 04:49:17 MST 2019
REM
REM Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
echo "xelab -wto d8f9a90ca5a94e3d9165f2f764a0909e --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot tb_Register_Module_behav xil_defaultlib.tb_Register_Module -log elaborate.log"
call xelab  -wto d8f9a90ca5a94e3d9165f2f764a0909e --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot tb_Register_Module_behav xil_defaultlib.tb_Register_Module -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
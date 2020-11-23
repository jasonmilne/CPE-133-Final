@echo off
REM ****************************************************************************
REM Vivado (TM) v2020.1.1 (64-bit)
REM
REM Filename    : compile.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for compiling the simulation design source files
REM
REM Generated by Vivado on Sun Nov 22 17:52:03 -0800 2020
REM SW Build 2960000 on Wed Aug  5 22:57:20 MDT 2020
REM
REM Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
REM
REM usage: compile.bat
REM
REM ****************************************************************************
echo "xvlog --incr --relax -prj FinalSim_vlog.prj"
call xvlog  --incr --relax -prj FinalSim_vlog.prj -log xvlog.log
call type xvlog.log > compile.log
echo "xvhdl --incr --relax -prj FinalSim_vhdl.prj"
call xvhdl  --incr --relax -prj FinalSim_vhdl.prj -log xvhdl.log
call type xvhdl.log >> compile.log
if "%errorlevel%"=="1" goto END
if "%errorlevel%"=="0" goto SUCCESS
:END
exit 1
:SUCCESS
exit 0

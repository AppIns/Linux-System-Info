#!/bin/sh

# This program is intended for use in 3rd party projects.
# This could be used for error reporting. Or finding system problems.

# Linux-System-Info v0.0.1

# Using this in your project will requrire you source this project


# This sources the program, just leave this here
echo "";
echo "NOTICE: Error reporting, Source: GitHub.com/AppIns/Linux-System-Info";
echo "NOTICE: Some info will be recorded.";
echo "";

# Comment or uncomment anything bellow to change reporting info.

# Gather Kernal info
SystemKernName=$(uname -n);
SystemKernVers=$(uname -r);

# Hardware info, (Not default)
#SystemHardware=$(uname -m);

# Username (Not default)
#SystemName=$(uname -n);

# Version and time reporting
SystemTime=$(date);
ProgramVersion="v0.0.1";
ProgramName="System-Info";

# Find home directory.
cd ~;
homedir=$(pwd);

# Create directory for error reporting
# NOTE: Change the name of the directory BEFORE using
if [ -d "$homedir/Error_Reporting" ]; then
  cd Error_Report
  if [ -d "$homedir/Error_Report/Error_Logs" ]; then
    cd Error_Logs
  else
    mkdir Error_Logs
    cd Error_Logs
  fi
else
  mkdir ~/Error_Report;
  mkdir ~/Error_Report/Error_Logs;
  cd ~/Error_Report/Error_Logs;
fi

# Time Vars
Sec=$(date +%s);
Day=$(date +%m +%d +%y);

echo "-NEW REPORT AT $Sec-
Date: $SystemTime
Kernal: $SystemKernName $SystemKernVers
Program: $ProgramName $ProgramVersion

This document was genorated by GitHub.com/AppIns/Linux-System-Info
If problems are found, send this report to: YOURNAME@DOMAIN.com

" >> "Log $Day.txt";

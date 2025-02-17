#!/bin/bash


rm -rf /etc/audit/rules.d/*.rules
mkdir -p /etc/audit/rules.d/
echo "-a always,exit -F arch=b32 -S clock_settime -F a0=0x0 -k time-change" >> /etc/audit/rules.d/time.rules
echo "-a always,exit -F arch=b64 -S clock_settime -F a0=0x0 -k time-change" >> /etc/audit/rules.d/time.rules

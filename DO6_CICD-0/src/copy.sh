#!/bin/bash
scp src/cat/s21_cat maryamgr@192.168.100.10:~/
scp src/grep/s21_grep maryamgr@192.168.100.10:~/
ssh maryamgr@192.168.100.10 "echo "1765" | sudo -S mv s21_cat s21_grep /usr/local/bin"
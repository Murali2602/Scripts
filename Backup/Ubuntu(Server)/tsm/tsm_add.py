#!/usr/bin/python3

import subprocess
import time


print("1.Magnet")
print("2.Torrent")
opt=int(input("Choose Your Option: "))
if opt==1:
        var1 = input("Enter the Magnet URL: ")
        list_files = subprocess.run(["transmission-remote", "-a", var1])
elif opt==2:
        var2 = input("Enter the Torrent File Path: ")
        list_files = subprocess.run(["transmission-remote", "-a", var2])

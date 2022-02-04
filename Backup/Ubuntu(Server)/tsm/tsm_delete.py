#!/usr/bin/python3

import subprocess
import time

Id=int(input("Enter the Id: "))
list_files = subprocess.run(["transmission-remote", "-t", id , "--remove"])
print("Done ;)")

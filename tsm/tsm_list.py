#!/usr/bin/python3

import subprocess
import time

i=0
while i<=10:
        list_files = subprocess.run(["transmission-remote", "-l"])
        print('The Exit code was: %d' % list_files.returncode)
        time.sleep(1)

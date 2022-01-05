#!/bin/bash
/etc/init.d/transmission-daemon stop 
transmission-daemon --no-auth
transmission-daemon

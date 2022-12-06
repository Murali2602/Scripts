#!/usr/bin/env python3

###################################################
##Author: Murali
##Date: 6th December 2022
##Coding: UTF-8 
###################################################


###################################################
##Description:
##This is basically automating yt-dlp installation and automatically downloading stuff and saving them.
###################################################

import subprocess



def cli():
    #Ask for Video URL
    url = input('Enter URL: ')

    while True:
        print("1.Show Formats")
        print("2.Download Format")
        user_input = int(input())
        if user_input == 1:
            formats = subprocess.run(['yt-dlp', '-F', url])
            pass
        elif user_input == 2:
            # Ask where to save the file
            directory = int(input('Where do u want to save the file?\n1.Songs\n2.Videos\n'))
            # Change the current working Directory
            if directory == 1:
                directory = "/home/murali/Songs"
            elif directory == 2:
                directory = "/home/murali/Videos/"
            audio_code = input('Enter Audio Code: \n')
            video_code = input('Enter Video Code: \n')
            download = subprocess.run(['yt-dlp', '-f', audio_code+'+'+video_code, '--embed-thumbnail', url], cwd=directory)
            if download.returncode == 0:
                print()
                prompt = input('Do you want to continue? (yes/no)')
                if prompt == "yes":
                    url = input('Enter URL: ')
                    continue
                else:
                    break
        else:
            break



cli()

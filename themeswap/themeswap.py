#! /usr/bin/env python

# Dependencies: ImageMagick, pyyaml, feh
# If you improve it, let me know!

import yaml, os, sys, shutil, subprocess, time, signal

help = "Usage: themeswap.py [THEME]"

if len(sys.argv) > 1:
    theme = sys.argv[1]
    if theme in ['help', '--help', '-help']:
        print(help)
        exit()
else:
    print(help)
    exit()

# The directory with all the configs and applications.yml
dir = f"{os.environ['HOME']}/themeswap"

# Add temporary blur to screen. Makes transition pretty. Optional.
def main():
    # Take screenshot, blur it, and open it fullscreen with feh
    subprocess.run(['scrot', '-o', f'{dir}/tmpscrot'])
    subprocess.run(['convert', f'{dir}/tmpscrot', '-blur', '2x2', f'{dir}/tmpscrot'])
    show = subprocess.Popen(['feh', '-x', '-F', f'{dir}/tmpscrot'])
    # Wait for feh to open. This is the lowest I could get it
    time.sleep(0.1)
    
    # Actually execute the script
    readconfig()

    # kill feh
    show.send_signal(signal.SIGINT)
    show.wait()

def swap(app, configlocation):
    # Find correct config in configs/
    newconfig = f'{dir}/configs/{theme}-{app}'
    shutil.copyfile(newconfig, configlocation)

def readconfig():
    # Open applications.yml
    with open(f'{dir}/applications.yml') as file:
        filecontents = yaml.safe_load(file)
        # Iterate through applications
        for app in filecontents:
            configlocation = filecontents[app]['config']
            commands = filecontents[app]['commands']
            # If the fields are left blank, nothing will happen.
            # This allows you to either only swap the configs, or only execute a script.
            if type(configlocation) in [str]:
                swap(app, configlocation)
            if type(commands) in [str]:
                subprocess.run(commands.split())

    print(f'The theme has been changed to {theme}.')

main()
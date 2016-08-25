#!/usr/bin/python

# Copyright Alejandro Blasco 2016. MIT license, see LICENSE file.

'''
description: set a desktop background based on current time
'''

import os
from datetime import datetime
from subprocess import call, PIPE, STDOUT

# sorted image file list in current script's directory
script_dir = os.path.dirname(os.path.realpath(__file__))
files      = [f for f in os.listdir(script_dir)]
imgs       = [img for img in files if img.endswith(".png")]
imgs       = sorted(imgs)
imgs       = [os.path.join(script_dir,f) for f in imgs]

# timings for the background
timing = (0, 6, 9, 12, 17, 18, 21, 23)

# get time and call feh to fill background with the suitable image
dic  = dict(zip(timing, imgs))
hour = int(datetime.now().strftime("%H"))
key  = 0
for t in timing:
    if hour >= t:
        key = t
    else:
        break
cmd = ['feh', '--bg-fill', dic[key]]
call(cmd, stderr=STDOUT, stdout=PIPE)


#  vim: set ai ts=4 sw=4 sts=4 tw=80 et ft=python :

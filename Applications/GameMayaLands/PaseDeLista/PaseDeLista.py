#!/usr/bin/env python
# -*- coding: utf-8 -*-

import os
import random
import time
import unidecode
import unicodedata

with open("ListaDeAsistencia.txt") as f:
    lines = f.readlines()
    random.shuffle(lines)
    f.close()
with open("ListaDeAsistencia.rnd", "w") as f:
    f.writelines(lines)
    for line in lines:
        line = line.rstrip('\r\n')
        print line
        voice_command = 'espeak -v es-la -a 100 -p 50 -s 170 \"%s\"' % line
        os.system(voice_command)
        #os.system('mosquitto_pub -h 10.215.56.158 -p 1883 -q 2 -t amikoo/sound/speechsynthetizer/decir -m "' + line + '"')
        time.sleep(1)
        raw_input("Press Enter to continue...")
    f.close()

# End Of File

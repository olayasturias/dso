#!/bin/bash  



./build/bin/dso_dataset \
    calib=examples/mimir_calibration.txt \
    files=$HOME/Datasets/MIMIR/$1/$2/auv0/rgb/$3/data \
    preset=2 \
    mode=1 \
    nolog=1 \
    start=0


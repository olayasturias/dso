#!/bin/bash  

# TUM_tracks='Handheld/rgbd_dataset_freiburg1_360 TestingDebugging/rgbd_dataset_freiburg1_rpy StructureTexture/rgbd_dataset_freiburg3_nostructure_notexture_far StructureTexture/rgbd_dataset_freiburg3_nostructure_texture_near_withloop'
TUM_tracks='StructureTexture/rgbd_dataset_freiburg3_nostructure_texture_near_withloop'

for track in $TUM_tracks
do
echo $track
./build/bin/dso_dataset \
    calib=examples/tum_rgbd_calibration.txt \
    files=/media/airlabsimulation/Acer/Olaya_data/Datasets/SLAM/tum_rgbd/$track/rgb \
    preset=2 \
    mode=1 \
    nolog=1 \
    start=0

mkdir --parents result/tum/$TUM_tracks
mv result.txt result/tum/$TUM_tracks/result.txt
done
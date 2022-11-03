#!/bin/bash  

KITTI_tracks='Handheld/rgbd_dataset_freiburg1_360 TestingDebugging/rgbd_dataset_freiburg1_rpy StructureTexture/rgbd_dataset_freiburg3_nostructure_notexture_far StructureTexture/rgbd_dataset_freiburg3_nostructure_texture_near_withloop'
KITTI_tracks='00 01 02'
for track in $KITTI_tracks
do
echo $track
./build/bin/dso_dataset \
    calib=examples/kitti_calibration_00-02.txt \
    files=/media/airlabsimulation/Acer/Olaya_data/Datasets/SLAM/KITTI/data_odometry_color/dataset/sequences/$track/image_2 \
    preset=2 \
    mode=1 \
    nolog=1 \
    start=0

mkdir --parents result/KITTI/$track
mv result.txt result/KITTI/$track/result.txt
done

KITTI_tracks='03'
for track in $KITTI_tracks
do
echo $track
./build/bin/dso_dataset \
    calib=examples/kitti_calibration_03.txt \
    files=/media/airlabsimulation/Acer/Olaya_data/Datasets/SLAM/KITTI/data_odometry_color/dataset/sequences/$track/image_2 \
    preset=2 \
    mode=1 \
    nolog=1 \
    start=0

mkdir --parents result/KITTI/$track
mv result.txt result/KITTI/$track/result.txt
done

KITTI_tracks='04 05 06 07 08 09'
for track in $KITTI_tracks
do
echo $track
./build/bin/dso_dataset \
    calib=examples/kitti_calibration_04-09.txt \
    files=/media/airlabsimulation/Acer/Olaya_data/Datasets/SLAM/KITTI/data_odometry_color/dataset/sequences/$track/image_2 \
    preset=2 \
    mode=1 \
    nolog=1 \
    start=0

mkdir --parents result/KITTI/$track
mv result.txt result/KITTI/$track/result.txt
done

KITTI_tracks='10'
for track in $KITTI_tracks
do
echo $track
./build/bin/dso_dataset \
    calib=examples/kitti_calibration_10.txt \
    files=/media/airlabsimulation/Acer/Olaya_data/Datasets/SLAM/KITTI/data_odometry_color/dataset/sequences/$track/image_2 \
    preset=2 \
    mode=1 \
    nolog=1 \
    start=0

mkdir --parents result/KITTI/$track
mv result.txt result/KITTI/$track/result.txt
done

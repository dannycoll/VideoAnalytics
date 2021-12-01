clear all
close all
addpath Face\

Objects = ObjectDetection('1.jpg','haarcascade_frontalface_alt.mat');

ShowDetectionResult('1.jpg',Objects);
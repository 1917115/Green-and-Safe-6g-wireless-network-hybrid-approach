%% config.m
clear;
clc;

% VLC Parameters
VLC_POWER = 15;          % Watt
VLC_BW = 100e6;          % 100 MHz
PHOTO_AREA = 1e-4;
OE_CONVERSION = 0.54;
FOV = 90;
REFRACTIVE_INDEX = 1.5;
NOISE_POWER = 1e-9;

% RF (WiFi) Parameters
RF_POWER = 10;           % Watt
RF_BW = 2e6;             % 2 MHz
RF_FREQ = 2.4e9;
RF_NOISE = 1e-9;

% Device Parameters
BATTERY_CAPACITY = 5000;     % mAh
BATTERY_VOLTAGE = 3.7;       % Volt

% Distance (10m to 150m)
DISTANCE = 10:10:150;

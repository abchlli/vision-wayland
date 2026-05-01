#!/bin/bash
drivers="
vulkan-loader
mesa-vulkan-intel
linux-firmware-intel
intel-video-accel
mesa-dri
"
drivers=$(clean "$drivers")

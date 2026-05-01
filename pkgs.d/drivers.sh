#!/bin/bash
drivers="
vulkan-loader
mesa-vulkan-radeon
mesa-vaapi
mesa-dri
"
drivers=$(clean "$drivers")

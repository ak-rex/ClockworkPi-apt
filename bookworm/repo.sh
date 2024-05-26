#!/bin/bash

reprepro -V --section utils --component main --priority 0 includedeb stable incoming/clockworkpi-audio-patch_0.2.deb
reprepro -V --section utils --component main --priority 0 includedeb stable incoming/clockworkpi-audio-shutdown_0.2.deb
reprepro -V --section utils --component main --priority 0 includedeb stable incoming/clockworkpi-cm4-kernel_6.6.30.deb
reprepro -V --section utils --component main --priority 0 includedeb stable incoming/devterm-cavestory-cpi_0.1_arm64.deb
reprepro -V --section utils --component main --priority 0 includedeb stable incoming/devterm-fan-temp-daemon-cm4_0.21.deb
reprepro -V --section utils --component main --priority 0 includedeb stable incoming/devterm-spotify-tui-cpi_0.1_arm64.deb
reprepro -V --section utils --component main --priority 0 includedeb stable incoming/devterm-thermal-printer-cm4_0.2.deb
reprepro -V --section utils --component main --priority 0 includedeb stable incoming/devterm-thermal-printer-cups_0.12.1_arm64.deb
reprepro -V --section utils --component main --priority 0 includedeb stable incoming/devterm-tic80-cpi_0.1_arm64.deb
reprepro -V --section utils --component main --priority 0 includedeb stable incoming/fonts-noto-cjk_1:20220127+repack1-1_all.deb
reprepro -V --section utils --component main --priority 0 includedeb stable incoming/piwiz_0.69_arm64.deb
reprepro -V --section utils --component main --priority 0 includedeb stable incoming/piwiz-dbgsym_0.69_arm64.deb
reprepro -V --section utils --component main --priority 0 includedeb stable incoming/piwiz-hs_0.69_arm64.deb
reprepro -V --section utils --component main --priority 0 includedeb stable incoming/piwiz-hs-dbgsym_0.69_arm64.deb
reprepro -V --section utils --component main --priority 0 includedeb stable incoming/socat_1.7.4.4-2_arm64.deb
reprepro -V --section utils --component main --priority 0 includedeb stable incoming/uconsole-4g.deb
reprepro -V --section utils --component main --priority 0 includedeb stable incoming/wiringpi_3.5_arm64.deb


apt-ftparchive release -c=aptftp.conf dists/stable >dists/stable/Release
gpg -u 5799BD7F376D1011C510B036B40C8F551C4AB897 -bao dists/stable/Release.gpg dists/stable/Release
gpg -u 5799BD7F376D1011C510B036B40C8F551C4AB897 --clear-sign --output dists/stable/InRelease dists/stable/Release
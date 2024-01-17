# Welcome to Buildroot3DS! 
## This is a lightweight distro based off Buildroot made for 3DS family systems, new and old.

### WARNING!
This is a branch that contains a version of Buildroot3DS that was compiled on an older version of Buildroot from 2021 and an older version of the armv6-eabihf toolchain. This may not have up to date security patches or the latest software.
Please use the master repo instead!

-Keyboard

### Build instructions
To build Buildroot3DS, here is what you do (you'll need to be on Linux, WSL hasn't been tested):

1) download the cross-compile toolchain [here](https://toolchains.bootlin.com/downloads/releases/toolchains/armv6-eabihf/tarballs/armv6-eabihf--glibc--bleeding-edge-2021.11-1.tar.bz2) and extract it to your /opt folder.
1) run 'git clone https://github.com/AFellowSpeedrunner/buildroot3ds.git' and cd into the folder after downloading.
2) rename the config file in the folder to '.config'. it will disappear if you don't have show hidden files turned on, this is okay.
3) run 'make menuconfig' and adjust it to your liking. do not change the build options though.
5) run 'make'.
6) wait while it compiles.
7) you will have your rootfs.cpio.gz image in the output/images folder and you can then copy it the linux3ds-kernel folder.
8) once fully compiled with the 3DS kernel, have fun!


Buildroot3DS is based off the ["buildroot"](https://github.com/linux-3ds/buildroot) repository from the ["Linux for 3DS" team](https://github.com/linux-3ds) and the [original Buildroot](https://github.com/buildroot/buildroot) repository.

echo "make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- $*"

if [ $1 = "modules_install" ]; then
	make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- modules_install INSTALL_MOD_PATH=../ NSTALL_MOD_STRIP=1
	#sudo cp ../lib/modules ~/myd-xc7z010/fs/buildroot-2015.02/output/images/rootfs/lib/ -a
else
	make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- LOADADDR=0x8000 $* -j4
fi

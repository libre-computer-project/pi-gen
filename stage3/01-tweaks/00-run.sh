#!/bin/bash -e

on_chroot << EOF
	SUDO_USER="${FIRST_USER_NAME}" raspi-config nonint do_boot_wait 1
EOF

install -d				"${ROOTFS_DIR}/usr/share/X11/xorg.conf.d"
install -m 644 files/10-disable-glx.conf		"${ROOTFS_DIR}/usr/share/X11/xorg.conf.d/"
install -m 644 files/10-meson.conf		"${ROOTFS_DIR}/usr/share/X11/xorg.conf.d/"
install -m 644 files/10-rockchip.conf		"${ROOTFS_DIR}/usr/share/X11/xorg.conf.d/"
install -m 644 files/10-sunxi.conf		"${ROOTFS_DIR}/usr/share/X11/xorg.conf.d/"


#!/bin/bash

sudo dnf install -y \
    git \
    gcc \
    gcc-c++ \
    meson \
    ninja-build \
    pkgconf-pkg-config \
    wayland-devel \
    wayland-protocols-devel \
    libxkbcommon-devel \
    libinput-devel \
    libdrm-devel \
    mesa-libEGL-devel \
    mesa-libGLES-devel \
    mesa-libgbm-devel \
    pixman-devel \
    cairo-devel \
    pango-devel \
    json-c-devel \
    pcre2-devel \
    libevdev-devel \
    systemd-devel \
    libseat-devel \
    libdisplay-info-devel \
    libliftoff-devel \
    lcms2-devel \
    gdk-pixbuf2-devel \
    scdoc \
    libxcb-devel \
    xcb-util-devel \
    xcb-util-wm-devel \
    xcb-util-renderutil-devel \
    xcb-util-errors-devel \
    vulkan-loader-devel \
    vulkan-headers \
    glslang-devel \
    xorg-x11-server-Xwayland

git clone https://github.com/swaywm/sway.git
git clone https://gitlab.freedesktop.org/wlroots/wlroots.git

cd sway
git checkout 1.12
cd ..

cd wlroots
git checkout 0.20.0
cd ..

mkdir -p sway/subprojects
ln -s ../../wlroots sway/subprojects/wlroots

#!/usr/bin/env bash

set -e

echo "==> Atualizando metadados do DNF..."
sudo dnf makecache

echo "==> Instalando ferramentas de compilação..."
sudo dnf install -y \
    git \
    gcc \
    gcc-c++ \
    meson \
    ninja-build \
    cmake \
    pkgconf-pkg-config

echo "==> Instalando dependências do wlroots..."
sudo dnf install -y \
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
    libxcb-devel \
    xcb-util-errors-devel \
    xcb-util-wm-devel \
    xcb-util-renderutil-devel \
    libglvnd-devel \
    vulkan-loader-devel

echo "==> Instalando dependências do SwayFX..."
sudo dnf install -y \
    scdoc \
    gdk-pixbuf2-devel \
    libcap-devel \
    hwdata-devel

echo "==> Instalando Xwayland..."
sudo dnf install -y \
    xorg-x11-server-Xwayland \
    xcb-util-wm-devel

echo "==> Clonando SwayFX..."
git clone https://github.com/wlrfx/swayfx.git

echo "==> Criando diretório de subprojetos..."
mkdir -p swayfx/subprojects

echo "==> Clonando SceneFX..."
git clone \
    https://github.com/wlrfx/scenefx.git \
    swayfx/subprojects/scenefx

echo "==> Clonando wlroots..."
git clone \
    https://gitlab.freedesktop.org/wlroots/wlroots.git \
    swayfx/subprojects/wlroots

echo
echo "============================================"
echo " SwayFX e dependências preparados!"
echo "============================================"
echo
echo "Estrutura criada:"
echo
echo "swayfx/"
echo "└── subprojects/"
echo "    ├── scenefx/"
echo "    └── wlroots/"
echo
echo "Build não realizado."
echo "Entre no projeto com:"
echo
echo "  cd swayfx"

#!/bin/bash
# Enes Köse – WSL için Xorg Kurulum Scripti (Aksaray v0.1)

echo "[XORG-INSTALLER] Kurulum başlatılıyor..."

# Dağıtım algılama
if [ -f /etc/os-release ]; then
    . /etc/os-release
    DISTRO=$ID
    echo "[XORG-INSTALLER] Algılanan dağıtım: $DISTRO"
else
    echo "Dağıtım bilgisi bulunamadı. Çıkılıyor."
    exit 1
fi

# Paket yöneticisine göre Xorg kurulumu
case "$DISTRO" in
    ubuntu|debian)
        sudo apt update
        sudo apt install -y xorg x11-apps
        ;;
    arch)
        sudo pacman -Syu --noconfirm xorg xorg-xinit
        ;;
    *)
        echo "Desteklenmeyen dağıtım: $DISTRO"
        exit 1
        ;;
esac

# DISPLAY ayarını .bashrc'ye ekle
DISPLAY_IP=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}')
echo "export DISPLAY=${DISPLAY_IP}:0" >> ~/.bashrc

echo "[XORG-INSTALLER] Kurulum tamamlandı. Terminali yeniden başlatın."

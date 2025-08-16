# Xorg-for-Wsl

📥 [v0.1 sürümünü indir](https://github.com/eneskose-dualbooter/xorg-for-wsl/releases/tag/v0.1)

WSL ortamında Xorg kurulumu için otomatikleştirilmiş bir shell script.  
GUI destekli Linux uygulamalarını Windows üzerinde çalıştırmak isteyenler için sade ve belgeli bir çözüm sunar.

---

## 🚀 Özellikler

- Dağıtım algılama (Ubuntu, Debian, Arch)
- Paket yöneticisine göre Xorg kurulumu
- Otomatik DISPLAY ayarı (`.bashrc` güncellemesi)
- Komut satırından hızlı kurulum

---

## 📦 Gereksinimler

- WSL2 aktif olmalı  
- Windows üzerinde X Server çalışmalı (örneğin: VcXsrv, X410)

---

## 🔧 Kurulum

```bash
git clone https://github.com/eneskose-dualbooter/xorg-for-wsl.git
cd xorg-for-wsl/installer
bash install-xorg.sh


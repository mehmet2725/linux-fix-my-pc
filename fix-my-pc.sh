#!/bin/bash
# ==============================
# Pop!_OS Güncelleme & Temizlik Scripti 🧼
# ==============================

echo " Pop!_OS bakım işlemi başlatılıyor..."
sleep 1

# 1️⃣ Depoları güncelle
echo ""
echo "📦 APT depoları güncelleniyor..."
sudo apt update -y

# 2️⃣ Paketleri yükselt
echo ""
echo "⬆️ Sistem paketleri yükseltiliyor..."
sudo apt upgrade -y

# 3️⃣ Gereksiz dosyaları temizle
echo ""
echo "🧹 Gereksiz dosyalar temizleniyor..."
sudo apt autoremove -y
sudo apt autoclean -y
sudo apt clean -y

# 4️⃣ Flatpak uygulamalarını güncelle
if command -v flatpak >/dev/null 2>&1; then
  echo ""
  echo "📦 Flatpak uygulamaları güncelleniyor..."
  flatpak update -y
else
  echo ""
  echo "ℹ️ Flatpak yüklü değil, bu adım atlanıyor."
fi

echo ""
echo "✅ Tüm işlemler tamamlandı!"
echo ""
echo "-----------------------------------------"
echo "Developed By Mehmet Sönmez..."
echo "-----------------------------------------"

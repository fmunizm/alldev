#!/bin/bash

echo "⚙️ Iniciando setup da VPS..."

sudo apt update && sudo apt upgrade -y

echo "📦 Instalando Node.js..."
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
sudo apt install -y nodejs

echo "🔁 Instalando PM2..."
sudo npm install -g pm2
pm2 startup systemd -u $USER --hp $HOME

echo "📦 Instalando PostgreSQL..."
sudo apt install -y postgresql postgresql-contrib

echo "🌐 Instalando NGINX..."
sudo apt install -y nginx

echo "🧰 Instalando utilitários extras..."
sudo apt install -y unzip git ufw build-essential

echo "🔐 Ativando firewall UFW..."
sudo ufw allow OpenSSH
sudo ufw allow 'Nginx Full'
sudo ufw --force enable

echo "✅ Setup da VPS concluído com sucesso."

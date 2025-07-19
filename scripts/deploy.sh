#!/bin/bash

REPO_URL=$1
PROJECT_NAME=$2
BRANCH=$3
DEPLOY_DIR="/var/www/$PROJECT_NAME"

echo "🔄 Iniciando deploy da aplicação $PROJECT_NAME..."

if [ ! -d "$DEPLOY_DIR" ]; then
  echo "📁 Diretório não existe. Clonando repositório..."
  git clone $REPO_URL $DEPLOY_DIR
fi

cd $DEPLOY_DIR || exit

echo "📥 Pull do branch $BRANCH..."
git reset --hard
git clean -fd
git checkout $BRANCH
git pull origin $BRANCH

echo "📦 Instalando dependências..."
npm install

echo "⚙️ Aplicando migrations (se existir prisma)..."
npx prisma migrate deploy || true

echo "🚀 Reiniciando aplicação com PM2..."
pm2 startOrReload ecosystem.config.js --update-env

echo "✅ Deploy concluído em $DEPLOY_DIR"

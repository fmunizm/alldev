#!/bin/bash

REPO_DIR=$1
MIRROR_URL=$2

if [ -z "$REPO_DIR" ] || [ -z "$MIRROR_URL" ]; then
  echo "❌ Uso: $0 <pasta-do-repo> <url-do-mirror>"
  exit 1
fi

cd "$REPO_DIR" || exit

echo "🔗 Configurando remote 'mirror' para $MIRROR_URL..."
git remote add mirror "$MIRROR_URL" 2>/dev/null || echo "⚠️ 'mirror' já configurado"

git remote -v
echo "✅ Mirror configurado com sucesso."

#!/bin/bash

echo "🧠 Instalando ambiente AllDev GPT..."

REPO="https://github.com/fmunizm/alldev"
FOLDER="alldev"

# Clonar ou atualizar
if [ ! -d "$FOLDER" ]; then
  git clone $REPO
else
  cd $FOLDER && git pull && cd ..
fi

cd $FOLDER

# Permissões para scripts
chmod +x scripts/*.sh
chmod +x scripts/monitor/*.sh

echo "✅ Scripts prontos."

# Validar arquivos
for file in openapi.yaml manifest.json onboarding.html; do
  if [ -f "$file" ]; then
    echo "✔️ $file encontrado"
  else
    echo "❌ $file não encontrado!"
  fi
done

echo ""
echo "🔗 Links úteis:"
echo "Manifesto:       https://fmunizm.github.io/alldev/manifest.json"
echo "OpenAPI:         https://fmunizm.github.io/alldev/openapi.yaml"
echo "Onboarding Page: https://fmunizm.github.io/alldev/onboarding.html"

echo ""
echo "🚀 Acesse https://chat.openai.com/gpts/editor e importe o GPT"

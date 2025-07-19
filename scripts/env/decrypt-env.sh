#!/bin/bash

set -e

echo "🔓 Descriptografando .env.enc..."

if [ ! -f ".env.enc" ]; then
  echo "❌ Arquivo .env.enc não encontrado!"
  exit 1
fi

gpg --quiet --batch --yes --decrypt --output .env .env.enc

echo "✅ .env restaurado com sucesso"

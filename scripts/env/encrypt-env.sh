#!/bin/bash

set -e

echo "🔐 Criptografando .env..."

GPG_KEY="AllDev GPT"
ENV_FILE=".env"
ENC_FILE=".env.enc"

if [ ! -f "$ENV_FILE" ]; then
  echo "❌ Arquivo .env não encontrado!"
  exit 1
fi

gpg --yes --batch -o "$ENC_FILE" -r "$GPG_KEY" --encrypt "$ENV_FILE"

echo "✅ Arquivo criptografado em $ENC_FILE"

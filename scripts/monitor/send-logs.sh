#!/bin/bash

LOGTAIL_TOKEN=$1
APP_NAME=$2
LOG_FILE="/var/log/$APP_NAME.log"

if [ ! -f "$LOG_FILE" ]; then
  echo "❌ Arquivo de log $LOG_FILE não encontrado."
  exit 1
fi

echo "📤 Enviando últimos 500 logs para Logtail..."

tail -n 500 $LOG_FILE | while read line; do
  curl -X POST https://in.logtail.com \
    -H "Authorization: Bearer $LOGTAIL_TOKEN" \
    -H "Content-Type: application/json" \
    -d "{\"dt\":\"$(date -Is)\",\"line\":\"$line\",\"source\":\"$APP_NAME\"}"
done

echo "✅ Logs enviados manualmente com sucesso."

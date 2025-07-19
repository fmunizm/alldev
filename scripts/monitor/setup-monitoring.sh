#!/bin/bash

LOGTAIL_TOKEN=$1
APP_NAME=$2
LOG_FILE="/var/log/$APP_NAME.log"
AGENT_PATH="/usr/local/bin/logtail-agent"

echo "🔍 Instalando dependências de monitoramento..."
sudo apt install -y curl jq

echo "📂 Criando arquivo de log da aplicação..."
sudo touch $LOG_FILE
sudo chmod 666 $LOG_FILE

echo "⬇️ Baixando script de envio de logs (Logtail-like)..."

cat <<EOF | sudo tee $AGENT_PATH > /dev/null
#!/bin/bash
tail -n 1000 -F $LOG_FILE | while read line; do
  curl -X POST https://in.logtail.com \
    -H "Authorization: Bearer $LOGTAIL_TOKEN" \
    -H "Content-Type: application/json" \
    -d "{\"dt\":\"\$(date -Is)\",\"line\":\"\$line\",\"source\":\"$APP_NAME\"}"
done
EOF

sudo chmod +x $AGENT_PATH

echo "⏱️ Adicionando script ao cron @reboot..."
(crontab -l ; echo "@reboot $AGENT_PATH &") | crontab -

echo "✅ Monitoramento instalado. Logs serão enviados para Logtail ao iniciar."

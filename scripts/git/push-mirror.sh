#!/bin/bash

REPO_DIR=$1
BRANCH=${2:-main}

if [ -z "$REPO_DIR" ]; then
  echo "❌ Uso: $0 <pasta-do-repo> [branch]"
  exit 1
fi

cd "$REPO_DIR" || exit

echo "🚀 Enviando branch '$BRANCH' para o mirror..."
git push mirror "$BRANCH" --force

echo "✅ Push para mirror concluído."

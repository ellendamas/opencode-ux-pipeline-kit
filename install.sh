#!/usr/bin/env bash
set -euo pipefail

WITH_CONFIG="false"
NO_OVERWRITE="false"

for arg in "$@"; do
  case "$arg" in
    --with-config)
      WITH_CONFIG="true"
      ;;
    --no-overwrite)
      NO_OVERWRITE="true"
      ;;
    *)
      echo "Parametro invalido: $arg"
      echo "Uso: ./install.sh [--with-config] [--no-overwrite]"
      exit 1
      ;;
  esac
done

SRC_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TARGET_DIR="$HOME/.config/opencode"
BACKUP_ROOT="$HOME/.config/opencode-backups"
STAMP="$(date +%Y%m%d-%H%M%S)"
BACKUP_DIR="$BACKUP_ROOT/ux-pipeline-$STAMP"

echo "==> Preparando backup em: $BACKUP_DIR"
mkdir -p "$BACKUP_DIR"

if [[ -d "$TARGET_DIR/agents" ]]; then
  cp -R "$TARGET_DIR/agents" "$BACKUP_DIR/agents"
fi

if [[ -d "$TARGET_DIR/skills" ]]; then
  cp -R "$TARGET_DIR/skills" "$BACKUP_DIR/skills"
fi

if [[ -d "$TARGET_DIR/workflows" ]]; then
  cp -R "$TARGET_DIR/workflows" "$BACKUP_DIR/workflows"
fi

if [[ -f "$TARGET_DIR/AGENTS.md" ]]; then
  cp "$TARGET_DIR/AGENTS.md" "$BACKUP_DIR/AGENTS.md"
fi

if [[ -f "$TARGET_DIR/opencode.json" ]]; then
  cp "$TARGET_DIR/opencode.json" "$BACKUP_DIR/opencode.json"
fi

echo "==> Instalando pacote no OpenCode"
mkdir -p "$TARGET_DIR/agents" "$TARGET_DIR/skills" "$TARGET_DIR/workflows"

if [[ "$NO_OVERWRITE" == "true" ]]; then
  echo "==> Modo complementar ativo: nao sobrescrever arquivos existentes"
  rsync -a --ignore-existing "$SRC_DIR/agents/" "$TARGET_DIR/agents/"
  rsync -a --ignore-existing "$SRC_DIR/skills/" "$TARGET_DIR/skills/"
  rsync -a --ignore-existing "$SRC_DIR/workflows/" "$TARGET_DIR/workflows/"

  if [[ -f "$TARGET_DIR/AGENTS.md" ]]; then
    echo "==> AGENTS.md ja existe, mantendo o arquivo atual"
  else
    cp "$SRC_DIR/AGENTS.md" "$TARGET_DIR/AGENTS.md"
  fi
else
  cp -R "$SRC_DIR/agents/." "$TARGET_DIR/agents/"
  cp -R "$SRC_DIR/skills/." "$TARGET_DIR/skills/"
  cp -R "$SRC_DIR/workflows/." "$TARGET_DIR/workflows/"
  cp "$SRC_DIR/AGENTS.md" "$TARGET_DIR/AGENTS.md"
fi

if [[ "$WITH_CONFIG" == "true" && "$NO_OVERWRITE" == "false" ]]; then
  echo "==> Instalando configuração base em $TARGET_DIR/opencode.json"
  cp "$SRC_DIR/opencode.example.json" "$TARGET_DIR/opencode.json"
elif [[ "$WITH_CONFIG" == "true" && "$NO_OVERWRITE" == "true" ]]; then
  if [[ -f "$TARGET_DIR/opencode.json" ]]; then
    echo "==> --with-config + --no-overwrite: mantendo opencode.json atual"
  else
    cp "$SRC_DIR/opencode.example.json" "$TARGET_DIR/opencode.json"
    echo "==> opencode.json instalado (arquivo nao existia)"
  fi
else
  echo "==> Configuração base não instalada (use --with-config se quiser sobrescrever opencode.json)"
fi

AGENT_COUNT="$(ls -1 "$TARGET_DIR/agents"/*.md 2>/dev/null | wc -l | tr -d ' ')"
WORKFLOW_COUNT="$(ls -1 "$TARGET_DIR/workflows"/*.md 2>/dev/null | wc -l | tr -d ' ')"
SKILL_COUNT="$(ls -1 "$TARGET_DIR/skills"/*/SKILL.md 2>/dev/null | wc -l | tr -d ' ')"

echo ""
echo "Instalacao concluida com sucesso."
echo "- Agentes instalados:   $AGENT_COUNT"
echo "- Skills instaladas:    $SKILL_COUNT"
echo "- Workflows instalados: $WORKFLOW_COUNT"
echo "- Backup salvo em:      $BACKUP_DIR"

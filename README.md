# UX Pipeline Kit para OpenCode

Pacote pronto para compartilhar seus agentes, skills e workflows de UX no OpenCode.

## O que vem neste repositório

- `agents/`: 26 agentes especializados (inclui `ux-orchestrator` como agente primário)
- `skills/`: 22 skills reutilizáveis
- `workflows/`: 6 workflows operacionais
- `templates/`: modelos oficiais (ex: Design Brief, avaliação heurística)
- `prompts/`: prompts operacionais versionados
- `datasets/`: bases de apoio (ex: mapeamento de eventos)
- `AGENTS.md`: regras globais do pipeline
- `docs/`: guias de operação e mapeamento
- `CHANGELOG.md`: histórico de mudanças do kit
- `opencode.example.json`: exemplo de configuração base do OpenCode

## Instalação rápida

```bash
git clone https://github.com/ellendamas/opencode-ux-pipeline-kit.git
cd opencode-ux-pipeline-kit
chmod +x install.sh
./install.sh
```

### Instalar sem sobrescrever nada que já exista

Este modo apenas complementa o ambiente com arquivos novos do kit:

```bash
./install.sh --no-overwrite
```

Comportamento do modo complementar:

- nao sobrescreve agentes existentes
- nao sobrescreve skills existentes
- nao sobrescreve workflows existentes
- mantem `AGENTS.md` atual se ja existir
- nao altera `opencode.json` existente

### Instalar também configuração base (`opencode.json`)

Use apenas se a pessoa quiser substituir o `~/.config/opencode/opencode.json` atual:

```bash
./install.sh --with-config
```

Para complementar sem sobrescrever e ainda instalar `opencode.json` apenas se ele nao existir:

```bash
./install.sh --no-overwrite --with-config
```

## Atualização

Dentro da pasta clonada:

```bash
git pull
./install.sh
```

## Onde ficam os arquivos instalados

- `~/.config/opencode/agents/`
- `~/.config/opencode/skills/`
- `~/.config/opencode/workflows/`
- `~/.config/opencode/templates/`
- `~/.config/opencode/prompts/`
- `~/.config/opencode/datasets/`
- `~/.config/opencode/AGENTS.md`

## Backup automático

O instalador cria backup antes de sobrescrever:

- `~/.config/opencode-backups/ux-pipeline-<timestamp>/`

## Guia completo do processo

Leia:

- `docs/GUIA-PIPELINE.md`
- `docs/CATALOGO-AGENTES-SKILLS.md`
- `docs/USO-DIARIO.md`
- `CHANGELOG.md`

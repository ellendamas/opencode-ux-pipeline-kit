# Nota: repositório `research-agents` (João Santos)

**Data:** 2026-08-06
**Autor do repo original:** João Santos (`jpsantos-taya`), ex-colaborador
**Repo:** https://github.com/jpsantos-taya/research-agents

## Contexto

João mantinha um pipeline multi-agente de UX Research separado do UX Pipeline Kit, construído sobre sub-agentes do Claude Code e uma metodologia própria chamada **MVR (Minimum Viable Research)**. Ao tentar portar esses agentes para este Kit, identificamos que o repositório dele está **incompleto**.

## O que falta

O `CLAUDE.md` do repo documenta 11 agentes de pesquisa (`ux-orchestrator`, `ux-planner`, `ux-screener`, `ux-discussion-guide`, `ux-survey-designer`, `ux-critic`, `ux-notetaker`, `ux-packager`, `ux-forms-publisher`, `ux-synthesis`, `ux-reporter`), mas os arquivos de definição desses agentes (pasta `.claude/agents/`) **nunca foram commitados** no GitHub. O mesmo vale para os templates Python (`.opencode/scripts/generate_docx_template.py`, `generate_forms_template.py`, `fetch_forms_responses_template.py`).

Confirmamos isso clonando o repo diretamente do GitHub: são apenas 2 commits, sem `.gitignore` escondendo nada — os arquivos simplesmente nunca entraram em nenhum commit. Esse material existia só na máquina local do João e, como ele saiu da empresa, não está disponível.

## O que o repositório TEM (útil para quem for reutilizá-lo)

- `CLAUDE.md`: documentação da arquitetura do pipeline — descreve os 11 agentes, a ordem de execução, as regras de orquestração e a integração com Jira (projeto `UXRSCH`). Serve como **especificação de referência**, não como agente executável.
- `agent-diagram/`: skill para gerar diagramas de sistemas multi-agente em draw.io — **já portada para este Kit** (`skills/agent-diagram/`).
- `research-artifacts/_shared/personas/corban.md`: persona de tom de voz para o canal correspondente bancário — **já portada para este Kit** (`personas/corban.md`).
- `research-artifacts/`: artefatos completos de 4 projetos de pesquisa já executados (planos, screeners, roteiros de entrevista, surveys, notas de sessão, sínteses e, em um caso, relatório final em DOCX/PDF):
  - `credito-trabalhador-cancelamentos/`
  - `crm-ia-gerentes-lotus/`
  - `perfil-corbans-lotus/`
  - `saquefacil-digitadores/`
- `research-artifacts/diagrams/`: versões do diagrama de arquitetura do pipeline (`.drawio` e `.png`).
- `participantes_interessados.html`: lista de participantes interessados em entrevistas/testes, coletada durante um evento com corbans.
- `assistencias-taya/01-plano-de-pesquisa.md`: plano de pesquisa de um projeto adicional, sem os demais artefatos.

## Recomendação

Tratar o repo do João como **arquivo de referência e histórico de projetos**, não como pipeline pronto para instalar. Para recuperar os 11 agentes, seria necessário reconstruí-los do zero usando o `CLAUDE.md` (arquitetura) e os artefatos de projetos reais (formato e nível de detalhe esperado de cada etapa) como especificação. Essa reconstrução não foi feita nesta rodada — decisão registrada em 2026-08-06 de deixar pendente por ora.

## Status no Kit

- ✅ `agent-diagram` (skill) — portada
- ✅ `corban` (persona) — portada
- ⏳ 11 agentes de pesquisa — pendente de reconstrução
- ⏳ 3 templates Python (DOCX/Forms) — pendente de reconstrução

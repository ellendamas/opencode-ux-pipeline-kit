# Changelog

## [2026-04-10] - Reestruturacao local + Jira AIPRODUCT/AIDESIGN

### Added
- Estrutura padrao para artefatos operacionais:
  - `~/.config/opencode/templates/`
  - `~/.config/opencode/prompts/`
  - `~/.config/opencode/datasets/event-mapping/`
- Template de Design Brief em `templates/modelo-design-brief.md`
- Template de avaliacao heuristica em `templates/heuristic-evaluator-modelo.md`
- Prompts operacionais em `prompts/`
- Datasets de mapeamento de eventos em `datasets/event-mapping/`

### Changed
- Fluxo Jira atualizado de AIPT (deprecated) para `AIPRODUCT-XX <-> AIDESIGN-XX`.
- `ux-orchestrator` atualizado com modo de delegacao balanceado:
  - plano obrigatorio antes da execucao
  - criterio explicito de quando delegar
  - relatorio final de quais agentes foram acionados

### Removed
- Referencias operacionais a `AIPT` em agentes e templates.

### Notes
- Assets locais (zip/mhtml/design-system) permanecem fora do pacote de distribuicao no GitHub.

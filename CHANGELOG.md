# Changelog

## [2026-08-06] - Novo fluxo Jira: board AIPRODUCT unificado (18 colunas)

### Added
- `docs/FLUXO-JIRA-AIPRODUCT.md`: documentacao completa do novo fluxo no board [AIPRODUCT (674)](https://taya-team-z4401kjx.atlassian.net/jira/software/projects/AIPRODUCT/boards/674) — 18 colunas divididas em fase Discovery (Product Designer + PM) e fase Downstream (PO + Developers + PM), tabela de issue types e tabela de quem move cada coluna.

### Changed
- `AGENTS.md`: secao "Jira board flow" reescrita para o board unico de 18 colunas, substituindo o fluxo `AIPRODUCT-XX <-> AIDESIGN-XX`. Regras de handoff atualizadas para os nomes de coluna novos (`QA` no lugar de `Team Review`, `Grooming`/`Journey Spec` no lugar de `Revisão Product`, etc.).
- `docs/GUIA-PIPELINE.md`: secao 5 (Fluxo Jira) reescrita para as 18 colunas.
- `agents/ux-orchestrator.md`: fluxo design <-> produto, tabela de status do Jira e regras de ativacao do `design-brief` reescritos para o board unico — o pipeline de design agora encerra o trabalho ativo ao fim de `Technical Design` (era `Itens concluídos` no AIDESIGN).

### Removed
- Board `AIDESIGN` (8 colunas) como fluxo vigente — descontinuado em favor do board unico `AIPRODUCT`.

## [2026-08-06] - Nota de diagnóstico: repo research-agents (João) incompleto

### Added
- `docs/NOTA-RESEARCH-AGENTS-JOAO.md`: registro formal do diagnóstico do repositório `github.com/jpsantos-taya/research-agents` — confirma via clone direto do GitHub que os 11 agentes de pesquisa e os 3 templates Python nunca foram commitados, e detalha o que o repo tem de fato (CLAUDE.md, artefatos de 4 projetos, diagramas, lista de participantes) para orientar quem for reutilizá-lo.

## [2026-08-06] - Skill agent-diagram e persona corban (origem: repo de ex-colaborador)

### Added
- `skills/agent-diagram/`: skill para gerar diagramas de sistemas multi-agente em draw.io e visualizacoes inline (com `references/patterns.md` e `references/drawio-template.md`).
- `personas/corban.md`: persona de correspondente bancario (canal corban), reutilizavel por agentes de pesquisa, copy e content-strategy.
- `personas/README.md`: guia de como criar e usar personas.
- Suporte a `personas/` no `install.sh` (backup, instalacao com e sem `--no-overwrite`, contagem no resumo final).

### Notes
- Material recebido de um repositorio de pesquisa UX (`research-agents`) mantido por um colaborador que deixou a empresa. O download nao incluia as pastas `.claude/agents/` e `.opencode/scripts/`, entao os 11 agentes do pipeline de pesquisa (`ux-orchestrator`, `ux-planner`, `ux-screener`, `ux-discussion-guide`, `ux-survey-designer`, `ux-critic`, `ux-notetaker`, `ux-packager`, `ux-forms-publisher`, `ux-synthesis`, `ux-reporter`) nao puderam ser recuperados — apenas a skill `agent-diagram`, a persona `corban` e os artefatos de projetos ja executados. Reconstrucao desses agentes fica pendente para uma sessao futura, caso necessario.

## [2026-08-06] - Rebranding Lotus+ para Trevo Design System

### Changed
- `lotus-builder` migrado de Lotus+ DS para o ecossistema Trevo DS:
  - novo repo de trabalho `~/projects/taya-trevo/`
  - novo pacote publicado `@tayatecnologia/trevo` (GitHub Packages)
  - nova secao "Fontes de Verdade do Ecossistema"
  - nova secao "Regra de Publicacao do DS"
- `dev-handoff`, `design-brief`, `ux-orchestrator` e `docs/CATALOGO-AGENTES-SKILLS.md` atualizados para referenciar Trevo DS em vez de Lotus+ DS.
- `skills/journey-spec` passa a citar os templates `template-spec-tela-trevo-v1.md` e `template-eventos-amplitude-v1.md`.
- `AGENTS.md` recebeu 3 regras que ja estavam em vigor no ambiente local e nao tinham sido versionadas:
  - uso dos templates oficiais de `scenario-testing/insumos/outputs/AIPRODUCT-11/` como fonte de spec/mapeamento de eventos
  - proibicao de usar caminho local como substituto de conteudo em comentario/descricao de issue Jira

### Fixed
- `.agent-memory-store/` (banco local do MCP agent-memory-store) adicionado ao `.gitignore` — nao deve ser versionado.

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

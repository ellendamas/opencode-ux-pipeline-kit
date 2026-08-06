# Guia do Pipeline de Agentes (OpenCode)

Este documento explica como o pipeline de agentes esta organizado hoje, como os especialistas colaboram e quais regras operacionais precisam ser respeitadas.

## 1) Arquitetura geral

- Agente principal: `ux-orchestrator`
- Papel: ler briefing, selecionar agentes minimos, carregar workflow correto, coordenar handoffs e consolidar entrega.
- Regra central: nao ativar todos os agentes ao mesmo tempo; acionar por necessidade real.

## 2) Fluxo macro padrao

```text
research -> data-analyst -> data-normalizer ->
visual-design + content-strategy + accessibility ->
data-normalizer -> prototype-testing -> ux-pitch
```

## 3) Workflows disponiveis

- `workflow-heuristica.md`
  - Analise heuristica de prints/telas com Nielsen.
  - Loop principal: heuristic-evaluator + content-strategy + accessibility + normalizacao.

- `workflow-benchmark.md`
  - Benchmark competitivo entre produto ancora e concorrentes.
  - Cruza heuristica, linguagem, estrategia e (quando houver) dados quantitativos.

- `workflow-discovery.md`
  - Discovery de oportunidade com evidencias qualitativas e quantitativas.
  - Fecha com experimento minimo proposto.

- `workflow-design-sprint.md`
  - Operacao de sprint de design em 5 fases (entender, divergir, decidir, prototipar, validar).

- `workflow-design-brief.md`
  - Pipeline de consolidacao e aprovacao de Design Brief para PO/Jira.

## 4) Regras operacionais criticas

- Idioma padrao: portugues brasileiro.
- Output padrao: `~/projects/<projeto>/insumos/outputs/`.
- Nunca sobrescrever output existente sem confirmacao humana.
- Sempre gerar `journey-spec.md` para tela nova/alterada.
- `journey-spec.md` deve conter taxonomia Amplitude com `event_name` em `snake_case`.

## 5) Fluxo Jira (board AIPRODUCT, 18 colunas)

Board unico, sem mais split AIDESIGN/AIPRODUCT. Detalhamento completo (issue types, quem move cada coluna) em [FLUXO-JIRA-AIPRODUCT.md](FLUXO-JIRA-AIPRODUCT.md).

Fase Discovery (Product Designer + PM):

1. `User Needs`
2. `Revisao Design`
3. `Aguardando Aprovacao`
4. `Product Review`
5. `To Prototype`
6. `Prototype Review`
7. `Journey Spec`
8. `Grooming`
9. `Technical Design`

Fase Downstream (PO + Developers + PM):

10. `Product Shape`
11. `Refinement`
12. `Backlog`
13. `To Do`
14. `Doing`
15. `QA`
16. `Done`
17. `Released`
18. `Monitoramento`

Regras:

- Nao pular direto de `Doing` para `Done`; deve passar por `QA`.
- Em mudanca de tela/jornada, anexar `journey-spec.md` antes de mover de `Journey Spec` para `Grooming`.
- Nao criar ou mover User Story em `Product Shape` sem solicitacao explicita do PO.

## 6) Estrutura de artefatos de apoio

- `templates/`: modelos oficiais reutilizaveis.
- `prompts/`: prompts operacionais versionados.
- `datasets/event-mapping/`: mapeamentos CSV de eventos.

## 7) Handoffs entre agentes

Padroes usados:

- Handoff simples: um agente gera output e o proximo continua.
- Handoff com revisao: um agente critica output do outro antes de consolidar.
- Consolidacao obrigatoria: sempre que 2+ agentes produzirem material, passar por `data-normalizer`.

## 8) Como iniciar uma demanda nova

1. Definir projeto ativo.
2. Entregar briefing para `ux-orchestrator`.
3. Orquestrador identifica tipo de demanda e carrega workflow.
4. Executar fases do workflow com loops de revisao quando necessario.
5. Consolidar output final.
6. Se necessario para stakeholder, finalizar com `ux-pitch`.

## 9) Qualidade minima esperada

- Evidencia clara para cada recomendacao.
- Sem contradicoes nao resolvidas entre agentes.
- Terminologia consistente (`user`, `screen`, `component`, `token`, etc.).
- Checklist de acessibilidade WCAG 2.1 AA considerado em telas novas/alteradas.

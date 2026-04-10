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

## 5) Fluxo Jira (AIPRODUCT <-> AIDESIGN)

Sequencia esperada:

1. `Itens Pendentes` (11)
2. `Revisao Design` (4)
3. `Aguardando Aprovacao` (2)
4. `Revisao Product` (3)
5. `TODO` (5)
6. `Em andamento` (21)
7. `Team Review` (6)
8. `Itens concluidos` (31)

Regras:

- Nao pular direto para `Itens concluidos`.
- Em mudanca de tela/jornada, anexar `journey-spec.md` antes de `Revisao Product`.
- Nao criar ou mover issues no `AIPRODUCT` sem solicitacao explicita de PM/PO.

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

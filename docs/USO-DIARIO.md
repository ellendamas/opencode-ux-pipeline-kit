# Uso diario dos agentes (playbook rapido)

Este guia mostra como eu geralmente uso os agentes no OpenCode no dia a dia, com fluxos curtos e exemplos praticos.

## 1) Regra geral de operacao

- Comeco sempre com `ux-orchestrator`.
- Passo um briefing curto: contexto, objetivo, plataforma e output esperado.
- Antes de executar, o orquestrador publica um plano (workflow, agentes acionados, dispensas e criterio de parada).
- O orquestrador escolhe o workflow e aciona so os agentes necessarios.
- Sempre que 2+ agentes entregam material, passo por `data-normalizer`.
- Se o resultado vai para lideranca, fecho com `ux-pitch`.

## 2) Prompt base que uso para iniciar

```text
Projeto: [nome]
Objetivo: [o que precisa decidir ou entregar]
Plataforma: [iOS / Android / Web / Cross-platform]
Insumos: [prints, links, dados, entrevistas]
Prazo: [quando precisa]
Entregavel: [doc, plano, benchmark, recomendacoes]
```

## 3) Fluxos mais comuns

### A) Heuristica de telas/prints

Quando uso:
- auditoria UX de telas existentes
- comparacao rapida de fluxos

Sequencia tipica:
1. `ux-orchestrator`
2. `heuristic-evaluator`
3. `content-strategy` (revisa linguagem)
4. `accessibility` (revisa WCAG)
5. `data-normalizer`
6. `ux-pitch` (se for apresentar)

Arquivo de referencia:
- `workflows/workflow-heuristica.md`

### B) Benchmark competitivo

Quando uso:
- entender onde o produto perde/ganha no mercado
- mapear padroes de concorrentes

Sequencia tipica:
1. `ux-orchestrator`
2. `heuristic-evaluator` (comparativo)
3. `content-strategy` (voz/tom/nomenclatura)
4. `ux-research` (sintese estrategica)
5. `data-analyst` (se houver dados)
6. `data-normalizer`
7. `ux-pitch`

Arquivo de referencia:
- `workflows/workflow-benchmark.md`

### C) Discovery de produto

Quando uso:
- problema ainda pouco validado
- duvida sobre oportunidade real

Sequencia tipica:
1. `ux-orchestrator`
2. `product-strategy`
3. `ux-research` (quando evidencia < 3)
4. `data-analyst` (se houver dados)
5. `product-strategy` (revisao de evidencia)
6. `facilitation` (explorar solucao)
7. `data-normalizer`
8. `ux-pitch` (opcional)

Arquivo de referencia:
- `workflows/workflow-discovery.md`

## 4) Como eu decido quais agentes acionar

- Texto de interface: `ux-writing` + `content-strategy`
- Componentes/tokens/spec visual: `visual-design`
- Acessibilidade: `accessibility`
- AI feature: `ia-ml-ux`
- Teste com usuario: `prototype-testing`
- KPI/funil/retencao: `data-analyst`
- Handoff para dev: `dev-handoff`
- Consolidar tudo em 1 doc: `data-normalizer`

## 5) Regra de ouro para qualidade

- Sempre explicitar plataforma (iOS, Android, Web, Cross-platform).
- Sempre gerar `journey-spec.md` em tela nova/alterada.
- Em `journey-spec.md`, usar `event_name` em `snake_case`.
- Nao mover card direto para concluido no Jira sem passar por revisoes.

## 6) Pacote minimo para entregar para time

No minimo:
- resumo executivo do problema e recomendacao
- achados priorizados (impacto x frequencia)
- proximos passos com dono e prazo
- riscos e pontos em aberto

Se precisar de apresentacao:
- rodar `ux-pitch` ao final.

## 7) Erros comuns que eu evito

- acionar agentes demais sem necessidade
- pular `data-normalizer` e gerar contradicao
- discutir copy sem `content-strategy`/`ux-writing`
- fazer recomendacao sem evidencia (qual ou quant)

## 8) Checklist rapido antes de fechar

- O output responde a pergunta inicial?
- Tem evidencia para cada recomendacao?
- Terminologia esta consistente?
- Tem acao clara para o proximo passo?

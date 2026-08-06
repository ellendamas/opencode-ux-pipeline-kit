# Padrões de Arquitetura de Agentes

## Padrão 1 — Pipeline Sequencial

**Quando usar:** cada agente depende do output do anterior. Sem paralelismo.

**Layout:** top-down linear com nós laterais para inputs/alertas.

```
[Orchestrator]
     ↓  task: allow
[Agente 1] ← [fonte externa]
     ↓
[Agente 2] ← [arquivo contexto]  →→ [alerta lateral]
     ↓
[Agente 3]
     ↓
[Agente 4]
     ↓
[Agente final (Reporter)]
     ↓
[Orchestrator — Log]
```

**Exemplo real:** VoC Pipeline (Orchestrator → Ingestor → Normalizer → Analyst → Strategist → Reporter)

**Características típicas:**
- Orchestrator tem `task:` para todos os sub-agentes
- Sub-agentes têm `bash: ls/cat/find/grep (allow)` mas não `task:`
- Reporter geralmente tem `edit: allow` (escreve o artefato final)
- Orchestrator fecha o loop com log de execução

---

## Padrão 2 — Orquestrador com Sub-agentes

**Quando usar:** orquestrador central distribui trabalho por especialidade. Sub-agentes podem rodar em paralelo ou por cenário.

**Layout:** orquestrador no topo → container de cenários → container de sub-agentes → quality gate → síntese → outputs.

```
[Orquestrador / CMO / Manager]
     ↓
[Cenários de ativação] (swimlane tracejada)
  cenário A | cenário B | cenário C ...
     ↓
[Sub-agentes] (swimlane tracejada, paralelos)
  [A] [B] [C] [D] [E] [F] ...
     ↓
[Quality Gate / Avaliação]  →→ [Retrabalho] ----→ (volta aos sub-agentes)
     ↓
[Síntese / Consolidação]
     ↓
[Outputs] (Markdown | PDF | resposta direta)
```

**Exemplo real:** Marketing Agency (CMO → 8 sub-agentes → quality → síntese → PDF/MD)

**Características típicas:**
- Sub-agentes são geradores de conteúdo (sem `bash`)
- Cada sub-agente referencia uma `SKILL.md` específica
- Orquestrador usa `skill: PDF` para relatório final
- Loop de retrabalho com seta tracejada vermelha

---

## Padrão 3 — Híbrido (Orquestrador + Sub-times Paralelos)

**Quando usar:** orquestrador central + grupos de sub-agentes que têm relações entre si (alguns paralelos, alguns sequenciais internamente).

**Layout:** manager no topo → sub-agentes paralelos em container → quality gate → agente de síntese → agente de report.

```
[Manager / Orchestrator]
     ↓
[Sub-agentes paralelos] (container tracejado)
  [Competitive] [Trends] [Consumer] [Data]
     ↓
[Quality Gate]  →→ [Revisar/Retrabalho]
     ↓
[Strategic Synthesis]   ← depende de TODOS os sub-agentes
     ↓
[Report Generation]
     ↓
[Output final]
```

**Exemplo real:** Market Intelligence Team (Manager → 4 agentes paralelos → quality → Synthesis → Report)

**Características típicas:**
- Sub-agentes têm skills especializadas (competitive-intelligence, market-trends, etc.)
- Agente de síntese é sempre sequencial após todos os sub-agentes
- Agente de report usa `bash` para gerar PDF via script
- Quality gate com critérios explícitos (completeness, rigor, insights, actionability)

---

## Elementos Recorrentes em Qualquer Padrão

### Nós laterais (não são agentes, mas aparecem no diagrama)

| Elemento | Cor | Posição típica |
|---|---|---|
| Fonte de dados externa | Cinza `#f5f5f5` | Lateral direito do agente que consome |
| Arquivo de contexto (`.md`) | Amarelo `#fff2cc` | Lateral direito do agente que lê |
| Alerta condicional | Vermelho `#f8cecc` | Lateral direito do agente que dispara |
| Output salvo (path) | Amarelo `#fff2cc` | Abaixo do agente que escreve |
| Briefing inicial | Cinza `#f5f5f5` | Lateral esquerdo do orquestrador |

### Loops e condicionais

```
[Quality Gate] → (se reprovado) → [Retrabalho]
                                       ↓ (seta tracejada vermelha)
                              (volta ao sub-agente)

[Normalizer] → (se ≥5 sinais churn) → [Alerta imediato]
                                        (não bloqueia pipeline)
```

### Convenção de numeração de agentes sequenciais
Use ① ② ③ ④ ⑤ antes do nome em pipelines sequenciais para deixar a ordem explícita.

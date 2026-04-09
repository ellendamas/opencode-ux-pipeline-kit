---
name: product-metrics
description: Hierarquia de métricas de produto (negócio, produto, qualidade UX, percepção), análise de funil, design de teste A/B e framework de KPI. Carregue ao analisar dados de produto ou definir métricas de sucesso.
license: MIT
compatibility: opencode
---

## O que esta skill contém

- Hierarquia de métricas (4 níveis)
- Template de análise de funil
- Framework de definição de KPI
- Template de design de teste A/B
- Framework hipótese dados → design

## Quando carregar esta skill

Carregue quando:
- Analisar dados de produto ou métricas de uso
- Definir KPIs para iniciativas de UX
- Realizar análise de funil
- Planejar ou interpretar testes A/B

---

## Hierarquia de Métricas

```
Nível 1 — Negócio (lagging):    receita, retenção, churn, NPS
Nível 2 — Produto (leading):    DAU/MAU, adoção de features, taxa de conclusão
Nível 3 — Qualidade UX:         tempo na tarefa, taxa de erro, rage clicks
Nível 4 — Percepção (atitudinal): SUS, CSAT, CES, NPS
```

## Análise de Funil

```
FUNIL: [Nome do Fluxo]
─────────────────────────────
Passo 1: [Tela/Ação] — 100% de entrada
Passo 2: [Tela/Ação] — [%] conversão / [%] abandono
  ⚠️ Hipótese de abandono: [hipótese]
Passo 3: [Tela/Ação] — [%] conversão / [%] abandono

Conversão geral: [primeiro → último %]

Abandonos críticos (>20% de perda):
→ Passo [n] para [n+1]: [%] — [hipótese]

Investigações recomendadas:
→ [Método qualitativo] para validar [hipótese]
```

## Definição de KPI

```
KPI: [Iniciativa de UX]
─────────────────────────────
KPI Primário:
  Métrica: [nome] | Baseline: [x] | Meta: [y] | Prazo: [data]

KPs Secundários:
  [métrica]: Baseline [x] → Meta [y]

Guarda-chuva (não podem piorar):
  [métrica]: atual [x] / piso [y]

Fonte de dados: [plataforma] | Cadência de revisão: [frequência]
```

## Design de Teste A/B

```
HIPÓTESE:
"Acreditamos que [mudança] resultará em [resultado] porque [racional]"

Variantes: Controle (A) vs Variante (B)
Métrica primária: [otimizar] | Guarda-chuva: [não podem piorar]
Significância: 95% (p < 0.05) | Poder: 80%

Critérios:
  Lançar se: [métrica primária melhora X% com p<0.05]
  Iterar se: [direcional mas não significativo]
  Reverter se: [guarda-chuva piora X%]
```

## Hipótese Dados → Design

```
Sinal: [o que os dados mostram] — Métrica: [valor] vs [benchmark]

Hipótese comportamental:
"Usuários estão [comportamento] porque [razão]"

Hipótese de design:
"Se [mudança], usuários vão [comportamento],
 melhorando [métrica] em [estimativa]"

Validação: [método qualitativo] + [teste A/B]
Prioridade: [Alta/Média/Baixa] | Esforço: [P/M/G]
```

---
name: experience-evaluation
description: >
  Use SEMPRE que um agente precisar avaliar a experiência de produto de forma
  qualitativa e/ou quantitativa: jornada emocional, friction points, métricas
  de experiência (SUS, NPS, CSAT, task success rate), triangulação de evidências
  mistas e avaliação de experiência competitiva. Ativa principalmente para
  product-design-specialist, mas também como skill de suporte para ux-research
  e prototype-testing quando o foco for qualidade da experiência integrada.
---

# Experience Evaluation Skill

Frameworks, escalas e templates para avaliação qualitativa e quantitativa de experiência de produto.

---

## Framework 1 — Jornada Emocional

Mapeia o estado emocional do usuário em cada etapa da jornada — não o que ele faz, mas como se sente fazendo:

```
MAPA DE JORNADA EMOCIONAL
─────────────────────────────────────────────
Produto: [nome]
Jornada: [nome da jornada ex: "contratar FGTS"]
Usuário: [perfil do ICP]

Etapa 1 — [nome]
  O que o usuário faz: [ação]
  Como se sente: [emoção predominante]
  Por quê: [causa identificada]
  Evidência: [o que observamos / foi dito]
  Intensidade: [🔴 alta tensão / 🟡 neutro / 🟢 positivo]

Etapa 2 — [nome]
  [repetir estrutura]

[...]

MOMENTOS CRÍTICOS:
  Pico negativo: [etapa] — [por quê é o momento mais tenso]
  Pico positivo: [etapa] — [por quê é o momento mais satisfatório]
  Ponto de abandono mais provável: [etapa] — [hipótese de causa]
  Momento de delight (se existir): [etapa] — [o que surpreende positivamente]
```

---

## Framework 2 — Classificação de Friction Points

```
FRICTION POINT — FICHA COMPLETA
─────────────────────────────────────────────
ID: FP-[n]
Etapa da jornada: [onde ocorre]
Tipo:
  □ Cognitivo    — usuário não entende o que fazer ou o que vai acontecer
  □ Emocional    — usuário sente insegurança, desconfiança ou ansiedade
  □ Operacional  — usuário sabe o que quer mas o sistema dificulta
  □ Motivacional — usuário perde senso de progresso ou recompensa
  □ Confiança    — usuário duvida da segurança, veracidade ou intenção

Evidência qualitativa:
  [citação, comportamento observado, ou padrão de reclamação]

Severidade percebida: [alta / média / baixa]
Frequência: [sempre / frequente / ocasional / raro]

Hipótese de causa:
  [por que isso acontece — raiz do problema]

Hipótese de solução:
  [o que poderia eliminar ou reduzir este friction]

Validação necessária:
  □ Confirmar com teste de usabilidade
  □ Confirmar com dado de funil (abandon rate, time on task)
  □ Confirmar com survey ou NPS comentado
  □ Já confirmado — evidência: [qual]

Prioridade de correção: [P1 antes do lançamento / P2 próximo sprint / P3 backlog]
```

---

## Framework 3 — Interpretação de Métricas de Experiência

### SUS — System Usability Scale

```
INTERPRETAÇÃO DE SUS
─────────────────────────────────────────────
Score recebido: [x]
Interpretação:
  85–100  = Excelente (A+) — usuários recomendam ativamente
  76–84   = Bom (B)       — usável com pequenas fricções
  68–75   = Mediano (C)   — limiar aceitável, melhorias necessárias
  51–67   = Ruim (D)      — dificuldades significativas relatadas
  0–50    = Inaceitável   — requer redesign substancial

Benchmark do setor (apps financeiros/crédito):
  Líder de mercado:   ~78–82
  Média do setor:     ~68–72
  Produto novo:       ~60–68 (esperado na primeira versão)

Posição relativa: [acima / na média / abaixo do benchmark]

Questões com score mais baixo (identificar quais das 10 questões do SUS
tiveram pior performance para direcionar as melhorias):
  Q[n]: [enunciado] — score: [x] — implicação: [o que revela]
```

### NPS — Net Promoter Score

```
INTERPRETAÇÃO DE NPS
─────────────────────────────────────────────
Score recebido: [x]
Promotores (9-10): [%]
Neutros (7-8): [%]
Detratores (0-6): [%]

Interpretação:
  > 70   = Excelente — base de promotores sólida, crescimento orgânico
  50–70  = Bom — produto relevante, há espaço para melhorar
  30–50  = Médio — satisfação frágil, risco de churn em momento de atrito
  0–30   = Atenção — maioria não recomendaria, problema sistêmico
  < 0    = Crítico — detratores superam promotores, urgência de ação

Benchmark do setor (fintech / crédito Brasil):
  Top quartil: ~55–65
  Mediana:     ~35–45

Análise dos comentários de detratores:
  Temas recorrentes: [lista]
  Friction point mais citado: [qual]

Análise dos comentários de promotores:
  O que mais valorizam: [lista]
  Fator de recomendação principal: [qual]
```

### Task Success Rate + Time on Task

```
INTERPRETAÇÃO DE TASK SUCCESS
─────────────────────────────────────────────
Tarefa avaliada: [descrição]
Taxa de sucesso: [%]
Interpretação:
  > 90%  = Bom — maioria completa sem assistência
  78–90% = Aceitável — revisão pontual recomendada
  < 78%  = Requer redesign — problema de usabilidade confirmado

Time on Task: [tempo médio]
Benchmark esperado para esta tarefa: [tempo de referência]
Desvio: [acima / dentro / abaixo do esperado]

Padrões de falha identificados:
  Onde desistem: [etapa]
  Erro mais cometido: [qual]
  Solução incorreta mais tentada: [qual — indica hipótese errada do usuário]
```

---

## Framework 4 — Triangulação de Evidências

```
MATRIZ DE TRIANGULAÇÃO COMPLETA
─────────────────────────────────────────────
Hipótese: [enunciado claro da hipótese]

EVIDÊNCIAS:
  Qualitativas (suportam):
    [evidência 1 — fonte]
    [evidência 2 — fonte]
  Qualitativas (contradizem):
    [evidência 3 — fonte]
  Quantitativas (suportam):
    [métrica + valor — fonte]
  Quantitativas (contradizem):
    [métrica + valor — fonte]
  Ausentes (precisamos coletar):
    [dado que falta + como coletar]

VEREDITO:
  □ Hipótese confirmada — evidências suficientes para agir
  □ Hipótese suportada — evidências parciais, baixo risco de agir
  □ Hipótese inconclusiva — coletar dado X antes de decidir
  □ Hipótese refutada — evidências apontam direção contrária

RECOMENDAÇÃO:
  [o que fazer com base nesta triangulação]
```

---

## Framework 5 — Avaliação de Experiência Competitiva

Cinco dimensões com notas e justificativas:

```
SCORECARD DE EXPERIÊNCIA
─────────────────────────────────────────────
Produto: [nome]
Data: [data]
Avaliador: product-design-specialist

DIMENSÃO 1 — Confiança percebida          [nota: x/10]
  Pontos fortes: [lista]
  Pontos fracos: [lista]
  Nota justificada: [argumento em 1-2 linhas]

DIMENSÃO 2 — Clareza do fluxo             [nota: x/10]
  Pontos fortes: [lista]
  Pontos fracos: [lista]
  Nota justificada: [argumento em 1-2 linhas]

DIMENSÃO 3 — Esforço percebido            [nota: x/10]
  Pontos fortes: [lista]
  Pontos fracos: [lista]
  Nota justificada: [argumento em 1-2 linhas]

DIMENSÃO 4 — Satisfação emocional         [nota: x/10]
  Pontos fortes: [lista]
  Pontos fracos: [lista]
  Nota justificada: [argumento em 1-2 linhas]

DIMENSÃO 5 — Adequação ao ICP             [nota: x/10]
  Pontos fortes: [lista]
  Pontos fracos: [lista]
  Nota justificada: [argumento em 1-2 linhas]

NOTA GERAL: [média] / 10
MAIOR FORÇA: [dimensão e razão]
MAIOR OPORTUNIDADE: [dimensão e razão]
POSIÇÃO COMPETITIVA: [líder / par / atrás — em relação a quê]
```

---

## Framework 6 — Síntese de Recomendações

```
RECOMENDAÇÕES PRIORIZADAS
─────────────────────────────────────────────
Critério de priorização:
  P1 — Impacto alto + esforço baixo (quick wins)
  P2 — Impacto alto + esforço alto (investimentos estratégicos)
  P3 — Impacto médio (melhorias incrementais)
  P4 — Impacto baixo (backlog sem urgência)

P1 — Quick wins:
  1. [recomendação] — [friction point que resolve] — [evidência que suporta]
  2. [recomendação] — [friction point que resolve] — [evidência que suporta]

P2 — Investimentos estratégicos:
  1. [recomendação] — [impacto esperado] — [validação necessária antes]

P3 — Melhorias incrementais:
  [lista]

HIPÓTESES AINDA A VALIDAR (antes de agir):
  [hipótese] → [como validar] → [custo estimado de coleta]
```

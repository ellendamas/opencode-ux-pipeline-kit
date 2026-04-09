# Workflow — Análise Heurística de Prints de Interface

**Tipo:** Colaboração dinâmica com loops de revisão  
**Insumo esperado:** Prints, screenshots ou PDF com telas de um produto digital  
**Entregável:** Relatório heurístico consolidado com achados, severidades e oportunidades  
**Agentes envolvidos:** `heuristic-evaluator`, `content-strategy`, `accessibility`, `ux-research`, `data-normalizer`, `ux-pitch`

---

## Fase 1 — Preparação (Orquestrador)

Antes de acionar qualquer agente, o orquestrador deve:

1. **Inventariar os insumos:** Quantas telas? Qual plataforma (mobile/web)? Qual produto e público-alvo?
2. **Definir escopo:** Todas as telas ou jornadas específicas? Há contexto de negócio relevante (ICP, mercado, concorrentes)?
3. **Confirmar com o usuário** antes de iniciar:
   > "Encontrei [N] telas de [produto]. Vou analisar [jornadas X, Y, Z]. O foco será [mobile/web], avaliando contra as 10 heurísticas de Nielsen. Confirma?"

---

## Fase 2 — Análise Primária (heuristic-evaluator)

**Acione:** `heuristic-evaluator`  
**Instrução de handoff:**
```
Analise as telas fornecidas usando as 10 heurísticas de Nielsen.
Para cada tela:
- Identifique violações com severidade (1-4)
- Identifique pontos positivos
- Identifique oportunidades de melhoria
Contexto do produto: [inserir do briefing]
ICP: [inserir do briefing]
Formato de saída: estruturado por tela, depois por heurística
```

**Output esperado:** Análise tela a tela com violações, positivos e oportunidades por heurística

**Critério para avançar:** Output cobre pelo menos 80% das telas fornecidas

---

## Fase 3 — Revisão de Linguagem (content-strategy revisa heuristic-evaluator)

**Acione:** `content-strategy`  
**Tipo de handoff:** Revisão — content-strategy recebe o output do heuristic-evaluator e critica especificamente os achados de linguagem

**Instrução de handoff:**
```
Receba a análise heurística abaixo e revise SOMENTE os achados relacionados a:
- Nomenclatura de elementos de interface
- Microcopy (labels, botões, erros, confirmações)
- Clareza da linguagem para o ICP
- Consistência de terminologia

Para cada achado de linguagem do heuristic-evaluator:
- Confirme se o diagnóstico está correto
- Adicione contexto ou nuance se necessário
- Sinalize se há algo que ele perdeu

NÃO refaça a análise visual. Apenas aprimore a camada de linguagem.
[output do heuristic-evaluator]
```

**Output esperado:** Lista de correções e adições sobre achados de linguagem  
**Loop:** Se content-strategy identificar gaps significativos → heuristic-evaluator recebe e refina aquelas telas específicas (não refaz tudo)

---

## Fase 4 — Revisão de Acessibilidade (accessibility revisa em paralelo)

**Acione:** `accessibility` (em paralelo com Fase 3, se houver prints suficientes)  
**Tipo de handoff:** Revisão especializada — acessibilidade que o heuristic-evaluator pode ter subestimado

**Instrução de handoff:**
```
Receba a análise heurística abaixo e avalie especificamente:
- Contraste de cores (WCAG AA mínimo)
- Tamanho de áreas de toque (mobile: mínimo 44x44pt)
- Hierarquia visual para leitores de tela
- Navegação por teclado (web)
- Uso de cor como único diferenciador

Para cada tela, sinalize: Conforme / Não conforme / Não avaliável pelos prints
[output do heuristic-evaluator]
```

**Output esperado:** Lista de achados de acessibilidade por tela com severidade WCAG

---

## Fase 5 — Loop de Consolidação (orquestrador decide)

Após receber outputs das Fases 3 e 4, o orquestrador avalia:

**Se os outputs são complementares e sem contradição:**
→ Avança para `data-normalizer`

**Se há contradição entre avaliações:**
→ Apresenta a contradição ao usuário e pede decisão antes de normalizar

**Se algum agente identificou gap crítico que exige reanálise:**
→ Retorna à Fase 2 com escopo reduzido (só as telas problemáticas)

---

## Fase 6 — Normalização (data-normalizer)

**Acione:** `data-normalizer`  
**Instrução de handoff:**
```
Consolide os três outputs abaixo em um único relatório estruturado:
1. Análise heurística principal [output fase 2]
2. Revisão de linguagem [output fase 3]
3. Revisão de acessibilidade [output fase 4]

Estrutura esperada do relatório final:
- Sumário executivo (notas por jornada, média geral, veredicto em 1 frase)
- Achados por tela (positivos + violações + oportunidades)
- Achados por heurística (visão cruzada)
- Top 5 achados críticos (priorizados por impacto × frequência)
- Oportunidades estratégicas (3-5 recomendações acionáveis)
```

**Output esperado:** Documento único, sem redundâncias, pronto para apresentar

---

## Fase 7 — Narrativa Executiva (ux-pitch) — Opcional

**Acione apenas se:** o entregável precisar de apresentação para stakeholders

**Instrução de handoff:**
```
Transforme o relatório heurístico consolidado em narrativa para apresentação.
Audiência: [inserir do briefing]
Formato: [slides conceituais / documento executivo]
Tom: [inserir — ex: consultivo, propositivo, crítico-construtivo]
Enfatize: achados de negócio, oportunidades, próximos passos
[output data-normalizer]
```

---

## Critérios de Qualidade do Entregável Final

Antes de encerrar, o orquestrador verifica:

- [ ] Todas as telas fornecidas foram analisadas (ou exceções foram justificadas)
- [ ] Cada achado tem severidade atribuída
- [ ] Há pelo menos uma oportunidade por jornada analisada
- [ ] O sumário executivo tem uma nota geral e um veredicto em linguagem humana
- [ ] Não há contradições não resolvidas entre os agentes

---

## Sinais de Que o Loop Deve Continuar

| Sinal | Ação |
|---|---|
| "Não consigo avaliar sem mais contexto sobre o ICP" | Orquestrador fornece contexto e reencaminha |
| "Esta tela contradiz o padrão estabelecido nas telas X e Y" | content-strategy e heuristic-evaluator discutem antes de normalizar |
| "O achado de acessibilidade muda a severidade do achado heurístico" | accessibility e heuristic-evaluator alinham severidade final |
| "O sumário não reflete os achados — há inconsistência" | data-normalizer refaz o sumário com instrução específica |

---

## Sinais de Que o Loop Deve Parar

| Sinal | Ação |
|---|---|
| Todos os critérios de qualidade marcados | Encerrar e entregar |
| Token budget > 40% consumido | Priorizar entrega do que está consolidado |
| Terceira iteração sem melhoria substancial | Registrar gap e encerrar com nota |

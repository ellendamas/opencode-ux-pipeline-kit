# Workflow — Benchmark Competitivo de UX

**Tipo:** Colaboração dinâmica com múltiplos loops e síntese estratégica  
**Insumo esperado:** Produto a analisar (app/web) + concorrentes a comparar + briefing de contexto  
**Entregável:** Análise comparativa com posicionamento, gaps, oportunidades e recomendações estratégicas  
**Agentes envolvidos:** `heuristic-evaluator`, `ux-research`, `content-strategy`, `data-analyst`, `visual-design`, `data-normalizer`, `ux-pitch`

---

## Fase 1 — Escopo do Benchmark (Orquestrador)

Antes de acionar qualquer agente:

1. **Definir o produto âncora:** qual produto está sendo benchmarkado?
2. **Definir os comparadores:** quais concorrentes ou referências? (diretos, indiretos, inspirações)
3. **Definir dimensões de análise:** o benchmark cobre tudo ou dimensões específicas?
4. **Definir a pergunta estratégica central:** o que queremos saber ao final?

**Perguntas de escopo a confirmar com o usuário:**
```
Antes de começar, confirme:
1. Produto principal: [nome]
2. Concorrentes a incluir: [lista]
3. Dimensões prioritárias: interface / linguagem / fluxo / acessibilidade / estratégia de conteúdo
4. Pergunta central: "Onde o [produto] perde para os concorrentes?" ou "O que podemos copiar/adaptar?"
5. Insumos disponíveis: prints? PDFs? só observação ao vivo?
```

**Apenas com essas respostas, o workflow avança.**

---

## Fase 2 — Análise Heurística Comparativa (heuristic-evaluator)

**Acione:** `heuristic-evaluator`  
**Tipo:** Análise paralela — avalia o produto âncora E os concorrentes com o mesmo framework

**Instrução de handoff:**
```
Realize análise heurística comparativa entre:
- Produto principal: [nome + prints/insumos]
- Concorrentes: [lista + prints/insumos]

Para cada produto, avalie as mesmas jornadas:
[listar jornadas — ex: onboarding, contratação do produto X, empty state]

Framework: 10 heurísticas de Nielsen
Formato de saída:
- Por produto: pontos fortes, violações, nota por jornada (1-10)
- Tabela comparativa cruzada ao final
- Destaques: o que cada concorrente faz melhor que o produto principal
```

**Output esperado:** Análise heurística de cada produto + tabela comparativa

**Critério para avançar:** Pelo menos produto âncora e 2 concorrentes analisados

---

## Fase 3 — Análise de Linguagem e Posicionamento (content-strategy)

**Acione:** `content-strategy`  
**Tipo:** Análise independente, sem depender do output da Fase 2 — roda em paralelo se possível

**Instrução de handoff:**
```
Analise a linguagem e posicionamento de conteúdo de cada produto:
- Produto principal: [nome]
- Concorrentes: [lista]

Avalie:
- Voz e tom: formal/informal, técnico/acessível, frio/humano
- Nomenclatura de features e jornadas
- Mensagens de onboarding e ativação
- Linguagem de erro e estados de exceção
- Como cada produto fala com seu ICP

ICP do produto principal: [inserir do briefing]

Formato: análise comparativa + mapa de posicionamento de linguagem
Pergunta a responder: "O produto principal fala como seu usuário fala?"
```

**Output esperado:** Análise de linguagem comparativa + posicionamento

---

## Fase 4 — Inteligência Estratégica (ux-research sintetiza o campo)

**Acione:** `ux-research`  
**Tipo:** Revisão estratégica — recebe outputs das Fases 2 e 3 e adiciona camada de inteligência de mercado

**Instrução de handoff:**
```
Receba as análises heurística e de linguagem abaixo.

Com base nos padrões identificados, responda:
1. Quais padrões de UX estão se tornando "mesa posta" neste mercado? (todos fazem, quem não faz perde)
2. Quais são os diferenciadores reais entre os produtos? (o que genuinamente os separa)
3. Onde o produto principal tem vantagem não explorada?
4. Quais tendências os concorrentes estão antecipando que o produto principal ainda não viu?
5. Qual é o "gap de percepção" — o que os usuários provavelmente percebem diferente do que o produto acredita oferecer?

[output heuristic-evaluator]
[output content-strategy]
```

**Output esperado:** 5-7 insights estratégicos com evidências dos outputs anteriores

**Loop:** Se ux-research identificar contradição entre as análises → volta para o agente específico resolver antes de continuar

---

## Fase 5 — Análise Quantitativa (data-analyst) — Condicional

**Acione apenas se:** houver dados quantitativos disponíveis (métricas de funil, ratings de app store, NPS, dados públicos de mercado)

**Instrução de handoff:**
```
Com base nos dados disponíveis [inserir fonte]:
- Compare métricas de engajamento/retenção entre os produtos (se disponível)
- Avalie ratings de app store e padrões de reviews
- Identifique onde os dados confirmam ou contradizem os achados qualitativos
- Estime impacto de negócio dos gaps identificados

[output heuristic-evaluator]
[output ux-research]
```

**Output esperado:** Camada quantitativa sobre os achados qualitativos

---

## Fase 6 — Loop de Alinhamento (Orquestrador decide)

Após receber todos os outputs, o orquestrador verifica contradições:

**Contradição típica de benchmark:**
- heuristic-evaluator avalia produto X como superior em fluxo
- ux-research identifica que o mercado está migrando para o padrão do produto Y
- → Os dois têm razão em camadas diferentes. Orquestrador deve apresentar ao usuário:
  > "Há uma tensão nos achados: [produto X] tem melhor execução atual, mas [produto Y] antecipa o padrão futuro. Como quer que eu trate isso na síntese?"

**Se sem contradições:** avança direto para normalização.

---

## Fase 7 — Normalização (data-normalizer)

**Acione:** `data-normalizer`  
**Instrução de handoff:**
```
Consolide os outputs abaixo em um relatório de benchmark único e coeso.

Estrutura esperada:
1. Sumário executivo
   - Veredicto em 1 parágrafo: posição do produto âncora no mercado
   - Tabela de pontuação comparativa (produto âncora vs concorrentes por dimensão)

2. Análise por dimensão
   - Interface e usabilidade (heurístico)
   - Linguagem e posicionamento (content)
   - Inteligência estratégica (research)
   - Dados quantitativos (se disponível)

3. Síntese competitiva
   - O que cada concorrente faz melhor
   - Onde o produto âncora lidera
   - Padrões de mercado estabelecidos (mesa posta)
   - Diferenciadores reais

4. Oportunidades estratégicas (top 3-5, priorizadas por impacto × viabilidade)

5. Recomendações imediatas vs médio prazo

[outputs de todas as fases]
```

---

## Fase 8 — Narrativa Executiva (ux-pitch) — Opcional

**Acione se:** o entregável precisar de apresentação para stakeholders

**Instrução de handoff:**
```
Transforme o benchmark consolidado em narrativa estratégica.
Audiência: [inserir — ex: C-level, time de produto, investidores]
Tom: [inserir — ex: propositivo, urgente, consultivo]
Estrutura sugerida:
- Onde estamos no mercado (1 slide/seção)
- O que os melhores estão fazendo que ainda não fazemos (2-3 slides)
- Nossas vantagens não exploradas (1-2 slides)
- O que fazer agora (próximos passos concretos)
[output data-normalizer]
```

---

## Critérios de Qualidade do Entregável Final

- [ ] Produto âncora e pelo menos 2 concorrentes analisados nas mesmas dimensões
- [ ] Tabela comparativa cruzada presente
- [ ] Pergunta estratégica central respondida explicitamente
- [ ] Cada oportunidade tem evidência dos achados (não é opinião solta)
- [ ] Recomendações separadas por horizonte de tempo (imediato vs médio prazo)
- [ ] Contradições entre agentes resolvidas ou explicitamente sinalizadas

---

## Sinais de Loop Dinâmico

| Sinal | Ação |
|---|---|
| heuristic-evaluator e content-strategy divergem sobre o mesmo produto | ux-research arbitra com perspectiva de mercado |
| ux-research identifica padrão que nenhum dos dois capturou | Ambos revisam aquela dimensão específica |
| data-analyst contradiz achado qualitativo com dado | Orquestrador apresenta tensão ao usuário antes de normalizar |
| Concorrente analisado tem jornada muito diferente das outras | heuristic-evaluator faz nota especial; data-normalizer preserva a distinção |
| Usuário adiciona novo concorrente durante a análise | Fases 2 e 3 rodam de novo só para o novo produto, outputs são integrados na Fase 7 |

---

## Sinais de Que o Loop Deve Parar

| Sinal | Ação |
|---|---|
| Todos os critérios de qualidade marcados | Encerrar e entregar |
| Token budget > 40% consumido | Entregar o que está consolidado, listar o que ficou pendente |
| Terceira iteração sobre o mesmo ponto sem resolução | Registrar como "ponto em aberto" e encerrar |
| Usuário aprova output intermediário explicitamente | Avançar sem mais iteração naquela fase |

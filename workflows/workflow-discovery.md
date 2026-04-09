# Workflow — Discovery de Produto

**Tipo:** Colaboração dinâmica com loops de validação
**Insumo esperado:** Briefing de produto ou oportunidade identificada
**Entregável:** Oportunidade validada com evidência, solução recomendada e experimento mínimo proposto
**Agentes envolvidos:** product-strategy, ux-research, data-analyst, facilitation, data-normalizer, ux-pitch

---

## Fase 1 — Enquadramento da Oportunidade (product-strategy)

**Acione:** `product-strategy`
**Tipo de handoff:** Simples
**Instrução de handoff:**
```
Receba o briefing do projeto. Aplique o framework Opportunity Solution Tree:
1. Formule o resultado desejado (outcome de negócio) como métrica mensurável
2. Liste as oportunidades identificadas na voz do usuário
3. Classifique o nível de evidência atual (hipótese / sinal / padrão /validado / confirmado)
4. Se nível < 3, defina um plano de descoberta

Output: oportunidade formulada com nível de evidência declarado.
Se precisar de discovery, liste as perguntas que precisam ser respondidas.
```

**Output esperado:** Oportunidade com nível de evidência + plano de descoberta (se aplicável)

**Critério para avançar:** Oportunidade está clara e o nível de evidência está declarado

---

## Fase 2 — Pesquisa Qualitativa (ux-research) [Condicional]

**Acione:** `ux-research`
**Tipo de handoff:** Simples
**Instrução de handoff:**
```
Conduza pesquisa qualitativa para validar a oportunidade identificada.

Se não há roteiro ainda: crie um roteiro de entrevista baseado nas perguntas de discovery do product-strategy.

Se já há roteiro: conduza entrevistas com usuários (mínimo 5) e sintetize:
- Padrões de comportamento observados
- Dores confirmadas vs descartadas
- Novas dores descobertas
- Oportunidades emergentes

Output: síntese de insights com evidências diretas dos usuários.
```

**Output esperado:** Síntese de insights qualitativos com citações e padrões

**Critério para avançar:** Mínimo de 5 entrevistas concluídas OU confirmação de que o problema existe com evidência

**Nota:** Esta fase é condicional — só avance se nível de evidência < 3

---

## Fase 3 — Validação Quantitativa (data-analyst) [Condicional]

**Acione:** `data-analyst`
**Tipo de handoff:** Paralelo com Fase 2 (se houver dados disponíveis)
**Instrução de handoff:**
```
Se há dados quantitativos disponíveis:
- Analise métricas relacionadas à oportunidade identificada
- Confirme ou contradiga os achados qualitativos
- Identifique segmentos de usuários mais afetados

Se não há dados: indique que esta validação não é possível no momento.

Output: camada quantitativa sobre os achados qualitativos.
```

**Output esperado:** Análise quantitativa ou nota de indisponibilidade de dados

**Critério para avançar:** Dados confirmam ou contradizem a oportunidade

**Nota:** Esta fase é condicional — só avance se houver dados disponíveis

---

## Fase 4 — Revisão de Evidência (product-strategy)

**Acione:** `product-strategy`
**Tipo de handoff:** Revisão
**Instrução de handoff:**
```
Revise os outputs das Fases 2 e 3:
1. As evidências respondem à pergunta central de discovery?
2. O nível de evidência mudou? (atualize para padrão/validado se apropriado)
3. Há alguma contradição entre dados qualitativos e quantitativos?

Se evidências são suficientes (nível ≥ 3): avance para exploração de soluções.
Se evidências são insuficientes: retorne para mais discovery.

Output: nível de evidência atualizado + decisão de avançar ou continuar discovery.
```

**Output esperado:** Nível de evidência revisado + go/no-go para soluções

---

## Fase 5 — Exploração de Soluções (facilitation)

**Acione:** `facilitation`
**Tipo de handoff:** Simples
**Instrução de handoff:**
```
Com a oportunidade validada, conduza uma sessão de exploração de soluções.

Escolha o formato baseado no nível de alinhamento do time:
- Se o time ainda não tem direção clara: How Might We + votação
- Se já há direçõesipotéticas: Design Studio para convergência

Output:
- 1 direção de solução escolhida
- Alternativas descartadas documentadas com razão
- Próximos passos definidos
```

**Output esperado:** Solução escolhida com justificativa + alternativas descartadas

**Critério para avançar:** Time convergiu para uma direção de solução

---

## Fase 6 — Experimento Mínimo (product-strategy)

**Acione:** `product-strategy`
**Tipo de handoff:** Simples
**Instrução de handoff:**
```
Com a solução escolhida, defina:
1. Experimento mínimo proposto (teste mais rápido para validar a solução)
2. Critério de sucesso mensurável
3. Como vamos medir (métricas, ferramentas)

Output: experimento mínimo com critérios de sucesso.
```

**Output esperado:** Experimento proposto com métricas de sucesso

---

## Fase 7 — Normalização (data-normalizer)

**Acione:** `data-normalizer`
**Tipo de handoff:** Consolidação
**Instrução de handoff:**
```
Consolide todos os outputs em um documento único de discovery:

Estrutura esperada:
1. Oportunidade Identificada
   - Problema formulado (na voz do usuário)
   - Outcome de negócio esperado

2. Evidências
   - Nível de evidência atual
   - Síntese qualitativa
   - Síntese quantitativa (se disponível)
   - Contradições identificadas (se houver)

3. Solução Recomendada
   - Descrição da solução
   - Alternativas consideradas e descartadas
   - Justificativa de negócio

4. Experimento Mínimo Proposto
   - Hipótese
   - Método
   - Critério de sucesso
   - Métricas de measurement

5. Próximos Passos
```

**Output esperado:** Documento consolidado de discovery

---

## Fase 8 — Narrativa Executiva (ux-pitch) [Opcional]

**Acione:** `ux-pitch`
**Tipo de handoff:** Transformação para apresentação
**Instrução de handoff:**
```
Transforme o documento de discovery em narrativa executiva.

Audiência: [stakeholders / C-level / time]
Tom: [propositivo / consultivo / urgente]

Estrutura:
- O problema que identificamos (1 slide)
- A evidência que valida (2-3 slides)
- A solução que recomendamos (1-2 slides)
- O experimento que vamos fazer (1 slide)
- O que precisamos para avançar (1 slide)
```

**Output esperado:** Apresentação ou documento executivo

---

## Critérios de Qualidade do Entregável Final

- [ ] Oportunidade está formulada na voz do usuário
- [ ] Nível de evidência está declarado e justificado
- [ ] Há pelo menos uma evidência qualitativa citada
- [ ] Solução recomendada tem justificativa de negócio
- [ ] Alternativas foram consideradas e descartadas com razão
- [ ] Experimento mínimo tem critério de sucesso mensurável
- [ ] Não há contradições não resolvidas entre evidências

---

## Sinais de Loop Dinâmico

| Sinal | Ação |
|---|---|
| Nível de evidência continua < 3 após pesquisa | Retornar para mais discovery antes de avançar |
| Contradição entre dados qualitativos e quantitativos | Investigar causa raiz antes de recomendar solução |
| Time não consegue convergir para solução | Nova sessão de facilitation com formato diferente |
| Stakeholder rejeita a oportunidade | Voltar para product-strategy para reformular |

---

## Sinais de Que o Loop Deve Parar

| Sinal | Ação |
|---|---|
| Todos os critérios de qualidade marcados | Encerrar e entregar |
| Nível de evidência atingiu "padrão" ou superior | Avançar para soluções |
| Stakeholder approve o output intermediário | Encerrar sem necessariamente completar todas as fases |
| Token budget > 40% consumido | Priorizar entrega do que está consolidado |

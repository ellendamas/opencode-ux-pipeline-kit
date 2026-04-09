# Workflow — Design Sprint

**Tipo:** Colaboração intensiva em 5 dias
**Insumo esperado:** Problema definido + participantes confirmados + 5 dias disponíveis
**Entregável:** Protótipo validado com usuários reais e decisão de seguir / pivotar / descartar
**Agentes envolvidos:** product-strategy, facilitation, ux-research, visual-design, prototype-testing, data-normalizer, ux-pitch

---

## Fase 1 — Segunda: Entender e Definir

**Acione:** `product-strategy` + `facilitation`
**Tipo de handoff:** Paralelo com síntese
**Instrução de handoff:**

**product-strategy:**
```
Mapeie o problema com Opportunity Solution Tree:
1. Qual é o outcome de negócio que queremos mover?
2. Qual é a oportunidade central que vamos atacar?
3. Qual é o objetivo de longo prazo do sprint?

Output: problema central formulado + outcome esperado.
```

**facilitation:**
```
Com o problema definido, conduza How Might We:
1. Apresente os insights de contexto
2. Gere perguntas no formato "Como poderíamos..."
3. Vote e selecione 1-2 HMWs como foco do sprint

Output: HMW priorizado + foco do sprint definido.
```

**Síntese (orquestrador):**
```
Combine os outputs: problema central + HMW priorizado = foco do sprint
```

**Output esperado:** Problema central + HMW priorizado + objetivo do sprint

**Critério para avançar:** Time tem foco claro e对齐 sobre o problema a resolver

---

## Fase 2 — Terça: Divergir

**Acione:** `facilitation` + `ux-research`
**Tipo de handoff:** Paralelo
**Instrução de handoff:**

**facilitation:**
```
Conduza Lightning Demos + Sketching:
1. Lightning Demos (30 min): cada participante pesquisa e apresenta 3 referências
2. Crazy 8s (8 min): cada participante faz 8 sketches rápidos em 8 minutos
3. Solução final (30 min): cada participante desenha uma solução completa

Output: 3-5 soluções esboçadas (sketches) de diferentes pessoas.
```

**ux-research:**
```
Forneça contexto de comportamento de usuário:
- Personas relevantes para o problema
- Padrões de comportamento observados em pesquisas anteriores
- Dores e necessidades dos usuários

Output: contexto de usuário para informar os sketches.
```

**Output esperado:** 3-5 soluções esboçadas com contexto de usuário

**Critério para avançar:** Time gerou múltiplas alternativas de solução

---

## Fase 3 — Quarta: Decidir

**Acione:** `facilitation` + `product-strategy`
**Tipo de handoff:** Revisão cruzada
**Instrução de handoff:**

**facilitation:**
```
Conduza a decisão:
1. Mapa de Calor: apresente todos os sketches, participantes marcam o que gostaram
2. Critique Silenciosa: cada um escreve o que gostou e o que não entendeu de cada sketch
3. Supervoto: cada participante tem 2 votos, os mais votados são discutidos

Decisão: qual solução levaremos para o protótipo?
Output: 1 solução escolhida + storyboard de 8 cenas.
```

**product-strategy:**
```
Valide a decisão:
1. A solução escolhida ataca a oportunidade central?
2. Há justificativa de negócio clara?
3. O risco está aceitável?

Se a decisão não tem justificativa: questione antes de avançar.

Output: validação de negócio da solução escolhida.
```

**Output esperado:** Solução escolhida + storyboard de 8 cenas + validação de negócio

**Critério para avançar:** Time convergiu para uma solução com validação de negócio

---

## Fase 4 — Quinta: Prototipar

**Acione:** `visual-design` + `ux-writing` + `dev-handoff`
**Tipo de handoff:** Colaborativo paralelo
**Instrução de handoff:**

**visual-design:**
```
Monte o protótipo de alta fidelidade:
1. Siga o storyboard de 8 cenas
2. Use os design tokens do projeto
3. Documente cada tela/componente

Output: protótipo navegável em alta fidelidade.
```

**ux-writing:**
```
Escreva todo o copy:
1. Labels, botões, mensagens
2. Estados de erro e vazio
3. Instruções e tooltips

Output: todo o copy do protótipo.
```

**dev-handoff:**
```
Documente as specs para referência:
1. Componentes usados
2. Estados implementados
3. Tokens aplicados

Output: especificação técnica do protótipo (para possível conversão futura).
```

**Output esperado:** Protótipo navegável pronto para teste

**Critério para avançar:** Protótipo está funcionando e navegável

---

## Fase 5 — Sexta: Validar

**Acione:** `prototype-testing` + `ux-research`
**Tipo de handoff:** Paralelo com síntese em tempo real
**Instrução de handoff:**

**prototype-testing:**
```
Conduza 5 testes com usuários reais:
1. Recrute participantes representativos do ICP
2. Siga o script de teste
3. Observe comportamento e colete feedback

Output: 5 sessões de teste documentadas.
```

**ux-research:**
```
Sintetize os padrões em tempo real:
1. O que funcionou bem?
2. O que caus confusão?
3. O que os usuários tentaram fazer?
4. O que surpreendeu?

Output: síntese de padrões observados.
```

**Síntese ao final do dia:**
```
Decisão do sprint:
- SEGUR: validamos a solução, próximo passo é implementar
- PIVOTAR: a solução não funcionou, mas aprendemos algo valioso
- DESCARTAR: a hipótese estava errada, preciso reformular o problema
```

**Output esperado:** 5 sessões de teste + padrões + decisão do sprint

**Critério para avançar:** Testes concluídos e decisão tomada

---

## Fase 6 — Normalização + Decisão

**Acione:** `data-normalizer`
**Tipo de handoff:** Consolidação
**Instrução de handoff:**
```
Consolide tudo em um documento de results:

Estrutura:
1. O que aprendemos
   - Sobre o problema
   - Sobre os usuários

2. O que validamos
   - Hipóteses confirmadas
   - Comportamentos observados

3. O que contradiz nossas hipóteses
   - Surpresas negativas
   - Surpresas positivas

4. Decisão
   - [ ] SEGUR / [ ] PIVOTAR / [ ] DESCARTAR

5. Próximos Passos
   - Se seguir: o que priorizar no backlog
   - Se pivotar: qual nova direção explorar
   - Se descartar: como reformular o problema
```

**Output esperado:** Documento consolidado de results do sprint

---

## Fase 7 — Narrativa (ux-pitch) [Opcional]

**Acione:** `ux-pitch`
**Tipo de handoff:** Transformação para apresentação
**Instrução de handoff:**
```
Transforme os results do sprint em narrativa executiva.

Audiência: [stakeholders / time de produto / toda a empresa]
Tom: [celebração de aprendizado / urgência de próximos passos]

Estrutura:
- O desafio (1 slide)
- O que testamos (1 slide)
- O que aprendemos (2-3 slides)
- A decisão (seguir/pivotar/descartar) (1 slide)
- Próximos passos (1 slide)
```

**Output esperado:** Apresentação de results do sprint

---

## Critérios de Qualidade do Entregável Final

- [ ] Problema central está claro e对齐 com stakeholders
- [ ] 3+ alternativas de solução foram geradas
- [ ] Decisão tem justificativa de negócio documentada
- [ ] Protótipo está navegável e funcional
- [ ] 5 testes com usuários reais foram conduzidos
- [ ] Decisão (seguir/pivotar/descartar) está tomada e justificada
- [ ] Próximos passos estão definidos com dono

---

## Sinais de Loop Dinâmico

| Sinal | Ação |
|---|---|
| Time não converge na Quarta | Voltar para mais divergência na Terça |
| Protótipo não fica pronto na Quinta | Reduzir escopo, focar no的核心 |
| Decisão unclear após testes | Mais testes ou reformular pergunta |
| Stakeholder muda foco durante sprint | Parar e renegociar escopo |

---

## Sinais de Que o Loop Deve Parar

| Sinal | Ação |
|---|---|
| Todos os critérios de qualidade marcados | Encerrar e entregar |
| Decisão tomada e justificada | Encerrar e apresentar |
| Tempo do sprint esgotou | Apresentar o que tem, não o que gostaria |
| Stakeholder approve resultado | Encerrar sem fases opcionais |

---
name: product-opportunity-tree
description: Frameworks de estratégia de produto: Opportunity Solution Tree, Jobs-to-be-Done, matriz de impacto × viabilidade, perguntas de discovery e priorização. Carregue quando precisar identificar oportunidades, avaliar iniciativas ou estruturar decisões de produto com evidência.
license: MIT
compatibility: opencode
---

## O que esta skill contém

Frameworks de estratégia de produto: Opportunity Solution Tree, Jobs-to-be-Done, matriz de impacto × viabilidade, perguntas de discovery, níveis de evidência e checklists de qualidade para análise de produto.

## Quando carregar esta skill

- Ao mapear oportunidades e soluções em uma árvore
- Ao estruturar decisões de produto com evidência
- Ao priorizar iniciativas com critérios definidos
- Ao conduzir discovery de produto
- Ao validar hipóteses antes de investir em solução

## Opportunity Solution Tree (Teresa Torres)

O framework e o template de preenchimento:

```
OPPORTUNITY SOLUTION TREE
────────────────────────────
Resultado desejado (outcome de negócio):
  [métrica que queremos mover + direção + horizonte]
  Ex: aumentar taxa de ativação de 40% para 60% em 3 meses

Oportunidades identificadas (dores/desejos dos usuários):
  ├── Oportunidade 1: [dor ou desejo real, na voz do usuário]
  │     Evidência: [fonte — entrevista, dado, observação]
  │     Frequência: [quantos usuários / com que frequência]
  │     Intensidade: [quanto isso incomoda — 1 a 5]
  │
  ├── Oportunidade 2: [...]
  │     Evidência: [...]
  │
  └── Oportunidade 3: [...]

Por oportunidade priorizada:
  Soluções consideradas:
    ├── Solução A: [descrição] | Esforço: [P/M/G] | Impacto esperado: [%]
    ├── Solução B: [descrição] | Esforço: [P/M/G] | Impacto esperado: [%]
    └── Solução C: [descrição] | Esforço: [P/M/G] | Impacto esperado: [%]

  Solução escolhida: [nome]
  Justificativa: [por que esta, não as outras]

  Experimentos para validar:
    ├── Experimento 1: [hipótese + método + critério de sucesso]
    └── Experimento 2: [hipótese + método + critério de sucesso]
```

## Jobs-to-be-Done

O framework e o template de entrevista JTBD:

```
JOB-TO-BE-DONE
────────────────────────────
Job principal:
  Quando [situação/contexto],
  eu quero [motivação/força],
  para que eu possa [resultado esperado].

Jobs funcionais (o que o usuário precisa fazer):
  [lista de tarefas concretas]

Jobs emocionais (como o usuário quer se sentir):
  [lista de estados emocionais desejados]

Jobs sociais (como o usuário quer ser visto):
  [lista de percepções sociais desejadas]

Forças que impulsionam a mudança:
  Push (o que empurra para sair da situação atual): [lista]
  Pull (o que atrai para a nova solução): [lista]

Forças que resistem à mudança:
  Ansiedades (medos sobre a nova solução): [lista]
  Hábitos (inércia da situação atual): [lista]
```

## Perguntas de Discovery de Produto

Organizadas por objetivo:

```
DESCOPBRIR SE O PROBLEMA EXISTE E É REAL
  "Me conte sobre a última vez que você [situação relevante]."
  "Com que frequência você enfrenta [problema]?"
  "O que você faz hoje para resolver [problema]?"
  "Quanto tempo/dinheiro/energia você gasta com isso?"
  "Se isso fosse resolvido amanhã, o que mudaria para você?"

ENTENDER A SOLUÇÃO ATUAL (ANTES DE PROPOR NOVA)
  "Me mostra como você faz isso hoje."
  "O que você mais gosta do jeito atual? O que mais incomoda?"
  "Já tentou outras formas? O que funcionou? O que não funcionou?"

VALIDAR UMA HIPÓTESE DE SOLUÇÃO
  "Se você pudesse [descrição da solução], isso seria útil?"
  "O que precisaria ser verdade para você usar isso?"
  "O que te faria não usar isso?"
  "Quem mais no seu time/vida teria esse problema?"

DESCOPBRIR CRITÉRIOS DE SUCESSO
  "Como você saberia que esse problema foi resolvido?"
  "O que mudaria no seu dia a dia?"
  "Como você mediria se está melhor ou pior?"
```

## Matriz de Impacto × Viabilidade

```
MATRIZ DE PRIORIZAÇÃO
────────────────────────────
Para cada iniciativa, pontue de 1 a 5:

  Impacto no usuário:    quanto resolve a dor identificada
  Impacto no negócio:    quanto move a métrica de outcome
  Viabilidade técnica:   quão complexo de implementar
  Viabilidade de dados:  temos evidência suficiente para apostando nisso
  Urgência:              há janela de mercado ou pressão competitiva

Score = (Impacto usuário × 2) + (Impacto negócio × 2) + Viabilidade técnica
        + Viabilidade de dados + Urgência

Interpretação:
  Score ≥ 20: alta prioridade — apostar agora
  Score 12–19: média prioridade — preparar para próximo ciclo
  Score < 12: baixa prioridade — registrar e revisitar

Nota: scores são ponto de partida, não decisão final.
Se duas iniciativas têm score parecido, o critério de desempate é:
"qual temos mais certeza que resolve o problema certo?"
```

## Níveis de Evidência

O agente deve sempre classificar o nível de certeza antes de recomendar:

```
NÍVEL 1 — HIPÓTESE
  Temos uma suposição baseada em lógica ou analogia.
  Ainda não falamos com usuários sobre isso especificamente.
  → Ação: planejar discovery antes de qualquer decisão de solução.

NÍVEL 2 — SINAL
  Temos 1–3 conversas ou dados anedóticos que apontam para o problema.
  → Ação: ampliar amostra antes de comprometer sprint completo.

NÍVEL 3 — PADRÃO
  5+ entrevistas ou dados quantitativos confirmam o problema.
  → Ação: pode avançar para exploração de soluções.

NÍVEL 4 — VALIDADO
  Temos evidência qualitativa E quantitativa convergindo.
  → Ação: pode comprometer desenvolvimento.

NÍVEL 5 — CONFIRMADO
  Solução foi testada com usuários reais e mostrou resultado mensurável.
  → Ação: escalar.
```

## Checklist de Qualidade

```
Antes de entregar qualquer análise de produto:
  [ ] O outcome está definido como métrica, não como feature
  [ ] As oportunidades estão na voz do usuário, não na voz do negócio
  [ ] Cada oportunidade tem pelo menos uma evidência citada
  [ ] A solução recomendada tem nível de evidência declarado
  [ ] Há pelo menos um experimento proposto para validar
  [ ] Alternativas foram consideradas e descarte foi justificado
```

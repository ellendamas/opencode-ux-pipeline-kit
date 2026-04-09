---
name: usability-testing
description: Guia de fidelidade de protótipo, plano de teste, SUS (System Usability Scale), scorecard por tarefa e priorização de descobertas. Carregue ao planejar ou analisar testes de usabilidade.
license: MIT
compatibility: opencode
---

## O que esta skill contém

- Guia de fidelidade (lo-fi, mid-fi, hi-fi)
- Plano de teste de usabilidade
- Script de tarefas
- SUS (System Usability Scale) e interpretação
- Scorecard por tarefa
- Priorização de descobertas

## Quando carregar esta skill

Carregue quando:
- Planejar testes de usabilidade
- Definir fidelidade de protótipo
- Analisar resultados de testes
- Calcular ou interpretar pontuação SUS

---

## Guia de Fidelidade

```
Lo-fi  — Discovery/Definição: sketches, wireframes, sem design visual
         Testa: navegação, fluxo, labels e nomes

Mid-fi — Design inicial: mockups em cinza com conteúdo real
         Testa: conclusão de tarefas, clareza, modelo mental

Hi-fi  — Pré-lançamento: pixel-perfect, conteúdo real, micro-interações
         Testa: taxas de conclusão completas, resposta emocional, acessibilidade
```

## Plano de Teste de Usabilidade

```
PLANO DE TESTE
─────────────────────────────
Perguntas de pesquisa: [lista]
Perfil do participante: [ICP, critérios de inclusão/exclusão]
Participantes: [5-8 recomendado]
Fidelidade: [lo / mid / hi]
Métricas:
  → Taxa de conclusão (meta: >80%)
  → Tempo na tarefa
  → Taxa de erro (meta: <2 por tarefa)
  → Pontuação SUS (meta: >68)
  → Satisfação (1-5)
Configuração: [Moderado/Não-moderado] [Remoto/Presencial]
```

## Script de Tarefas

```
Introdução: consentimento + "Estamos testando o design, não você.
             Pense em voz alta enquanto navega."

Aquecimento: comportamento atual do usuário no contexto

Tarefa [N]:
  Cenário: "[contexto do mundo real]"
  Tarefa:  "Por favor, [ação específica]. Me avise quando terminar."

  Observe: onde clica primeiro / onde hesita / o que diz / completa?

  Pós-tarefa: "Como foi? Algo confuso? Quão confiante está?"

Pós-teste: SUS + "O que mudaria?" + "O que funcionou bem?"
```

## SUS — System Usability Scale

```
10 perguntas alternando positivas e negativas
Ímpares: pontuação - 1 | Pares: 5 - pontuação | Total × 2.5

> 85: Excelente | 68-85: Bom | 51-68: OK | < 51: Ruim (redesign)
```

## Scorecard por Tarefa

```
Tarefa: [descrição] | Participantes: [n]
─────────────────────────────
Taxa de conclusão:      [x/n] = [%]   meta: >80%
Tempo médio:            [seg/min]
Taxa de erro:           [média por usuário]
Primeiro clique certo:  [%]
Satisfação (1-5):       [média]

Padrões observados:
Falhas críticas:
```

## Priorização de Descobertas

```
Crítico (antes do lançamento): bloqueia tarefa; afeta >50% usuários
Maior (próximo sprint):        dificuldade significativa; >30% usuários
Menor (backlog):               confusão leve; <30% usuários; há alternativa
Melhoria:                      nice to have; não afeta conclusão
```

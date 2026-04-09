---
name: nielsen-heuristicas
description: As 10 heurísticas de Nielsen, escala de severidade, protocolo de avaliação tela a tela e template de análise competitiva. Carregue quando for realizar avaliação heurística de interfaces reais (screenshots, PDFs, prints).
license: MIT
compatibility: opencode
---

## O que esta skill contém

- As 10 Heurísticas de Nielsen (referência completa)
- Escala de severidade (1-Crítico a 4-Cosmético)
- Protocolo de avaliação tela a tela
- Template de síntese de jornada
- Template de análise competitiva

## Quando carregar esta skill

Carregue quando o usuário enviar:
- Screenshots ou prints de interfaces para avaliação
- PDFs com múltiplas telas de um app/site
- Solicitar "avaliação heurística", "UX audit" ou "análise competitiva"
- Pedir para identificar problemas de usabilidade em interfaces reais

---

## As 10 Heurísticas de Nielsen

```
H1  Visibilidade do status do sistema
H2  Correspondência entre sistema e mundo real
H3  Controle e liberdade do usuário
H4  Consistência e padrões
H5  Prevenção de erros
H6  Reconhecimento em vez de memorização
H7  Flexibilidade e eficiência de uso
H8  Design estético e minimalista
H9  Ajuda a reconhecer, diagnosticar e recuperar de erros
H10 Ajuda e documentação
```

## Escala de Severidade

```
1 - Crítico:   bloqueia conclusão da tarefa
2 - Sério:     causa dificuldade significativa
3 - Menor:     causa confusão leve, usuário se recupera
4 - Cosmético: não afeta usabilidade
```

## Protocolo de Avaliação

### Para cada tela:
```
AVALIAÇÃO DE TELA
─────────────────────────────
Jornada: [nome]
Tela: [n] de [total]
Descrição: [o que essa tela é/faz]

Heurísticas avaliadas:
  ✅ H1 - Visibilidade: [observação]
  ❌ H6 - Reconhecimento: [problema encontrado]
  ⚠️ H8 - Estética: [atenção]

Achados:
  Problema 1: [descrição]
    Severidade: [1-Crítico / 2-Sério / 3-Menor / 4-Cosmético]
    Heurística: [H1-H10]
    Evidência: [o que especificamente na tela]
    Recomendação: [correção específica]

Padrões positivos:
  + [o que funciona bem e por quê]

Nota da tela: [1-10]
```

### Síntese da jornada:
```
SÍNTESE DA JORNADA
─────────────────────────────
Jornada: [nome]
Telas avaliadas: [n]
Nota média: [x/10]

Problemas críticos (corrigir antes do lançamento):
Problemas sérios (corrigir no próximo sprint):
Padrões recorrentes (aparece em 3+ telas):
Padrões positivos a preservar:
Maior oportunidade: [única melhoria mais impactante]
```

## Template de Análise Competitiva

```
ANÁLISE HEURÍSTICA COMPETITIVA
─────────────────────────────
Produto: [nome] | Jornadas: [lista] | Data: [data]

Por jornada: [nome] — [nota] — [resumo em 1 linha]

Padrões transversais:
  Pontos fortes (consistentes entre jornadas):
  Pontos fracos (consistentes entre jornadas):

Top 3 para replicar:
Top 3 para evitar:

Maturidade geral de UX: [Baixa / Média / Alta / Best-in-class]
Maior diferencial: [o que distingue o produto]
Maior lacuna: [fraqueza mais significativa]
```

---
name: design-roi
description: Frameworks de ROI (conversão, retrabalho evitado, redução de suporte), calculadora de custo de UX ruim, métricas de time e modelo de maturidade. Carregue ao demonstrar valor de UX para stakeholders.
license: MIT
compatibility: opencode
---

## O que esta skill contém

- Frameworks de ROI por tipo (conversão, retrabalho, suporte)
- Calculadora de custo de UX ruim
- Métricas de time de design
- Modelo de maturidade de DesignOps
- Template de relatório executivo

## Quando carregar esta skill

Carregue quando:
- Calcular retorno sobre investimento de iniciativas de UX
- Demonstrar valor do design para stakeholders
- Criar relatório executivo de impacto
- Avaliar maturidade do time de design

---

## Frameworks de ROI

### ROI por Melhoria de Conversão
```
Atual:  [n usuários/mês] × [x% conversão] × [R$ ticket] = R$ [receita]
Após:   [n usuários/mês] × [x+melhoria%] × [R$ ticket] = R$ [nova receita]

Impacto mensal: R$ [nova - atual]
Impacto anual:  R$ [mensal × 12]
Custo da iniciativa: R$ [valor]
Payback: [custo / impacto mensal] meses
ROI: [(anual - custo) / custo × 100]%
```

### ROI por Retrabalho Evitado
```
Custo de correção por fase:
  Design:      R$ 1 (baseline)
  Desenvolvimento: R$ 6
  Produção:    R$ 100+

Problemas identificados antes do dev: [n]
Custo evitado: [n × custo em dev] = R$ [valor]
Custo da pesquisa: R$ [valor]
ROI da pesquisa: [(evitado / investido - 1) × 100]%
```

### ROI por Redução de Suporte
```
Tickets de UX/mês: [n] × R$ [custo por ticket] = R$ [custo mensal]
Após melhoria: redução de [x%] = economia R$ [valor/mês]
Economia anual: R$ [valor] | ROI: [%]
```

## Calculadora de Custo de UX Ruim

```
Abandono por UX ruim:     [taxa%] × [usuários] × [ticket médio] = R$/mês
Suporte por confusão:     [tickets] × [custo/ticket] = R$/mês
Retrabalho de dev:        [bugs UX/sprint] × [horas] × [R$/hora] = R$/mês

CUSTO MENSAL DE UX RUIM:  R$ [soma]
CUSTO ANUAL DE UX RUIM:   R$ [× 12]
Investimento em UX:       R$ [valor] | Payback: [meses]
```

## Métricas do Time

```
Velocidade: tempo de ciclo (briefing → entrega), iterações por projeto
Qualidade: taxa de retrabalho pós-handoff, bugs de UX em produção
Cobertura: % de features com research antes do design
Impacto: % de iniciativas com melhoria mensurável
```

## Maturidade de DesignOps

```
Nível 1 — Reativo:     design entra após decisões; sem processos; ROI não medido
Nível 2 — Estruturado: processos básicos; design system iniciado; métricas de output
Nível 3 — Estratégico: design participa de decisões; ROI calculado por iniciativa
Nível 4 — Transformador: design co-lidera estratégia; pipeline de validação contínua
```

## Template de Relatório Executivo Mensal

```
RELATÓRIO DE IMPACTO DO DESIGN — [Mês/Ano]
─────────────────────────────
Resumo: [2-3 frases sobre o impacto do mês]

ROI do mês:
  Investido: R$ [valor] | Gerado (estimado): R$ [valor] | ROI: [%]

Iniciativas e impacto:
  [Iniciativa] — [métrica] — Antes: [x] — Depois: [y] — Impacto: R$ [valor]

Retrabalho evitado: [n] problemas → R$ [valor] economizados

Saúde do time:
  Velocidade: [dias] | Aprovação na 1ª revisão: [%] | Bugs UX: [n]

Próximo mês: [iniciativas] — ROI esperado: R$ [valor]
```

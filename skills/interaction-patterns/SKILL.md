---
name: interaction-patterns
description: Padrões de microinteração, animação e transição para interfaces mobile e web. Carregue quando precisar especificar comportamentos de componentes em movimento, definir timing e easing, ou documentar feedback háptico e visual para ações do usuário.
license: MIT
compatibility: opencode
---

## O que esta skill contém

Esta skill fornece referências técnicas sobre microinterações, timing, easing, transições e feedback háptico para interfaces mobile e web.

## Quando carregar esta skill

- Ao especificar comportamentos de componentes em movimento
- Ao definir timing e easing para animações
- Ao documentar feedback háptico para mobile
- Ao criar especificações de transição entre telas
- Ao revisar animações implementadas

## Princípios de Microinteração

Os 4 componentes de uma microinteração (Dan Saffer):
- Gatilho (o que inicia)
- Regras (o que acontece)
- Feedback (o que o usuário vê/sente)
- Loops e modos (o que acontece com o tempo ou repetição)

## Timing e Easing por Tipo de Movimento

| Tipo de movimento | Duração recomendada | Easing |
|---|---|---|
| Feedback imediato (tap, click) | 100–200ms | ease-out |
| Transição entre telas | 200–350ms | ease-in-out |
| Entrada de elemento | 150–300ms | ease-out |
| Saída de elemento | 100–200ms | ease-in |
| Expansão de accordion / drawer | 200–300ms | ease-in-out |
| Loading / skeleton | loop contínuo | linear |
| Erro (shake) | 400ms total | ease-in-out |
| Sucesso (check) | 300–400ms | spring |

## Padrões por Tipo de Interação

Para cada tipo: o que animar, o que não animar, timing sugerido, exemplo de uso.

**Botões e CTAs**
- Estados: rest → pressed → loading → success/error
- Animar: escala no press (0.95-1.0), transição de cor no hover, spinner no loading
- Timing: press = 100ms, hover = 150ms, loading = contínuo

**Formulários**
- Estados: vazio → focus → preenchendo → válido/erro → submit
- Animar: transição de borda no focus, shake no erro, check no válido
- Timing: focus = 150ms, erro = 400ms, válido = 300ms

**Navegação entre telas**
- Tipos: push, modal, tab switch, bottom sheet
- Animar: slide para push, fade + scale para modal, crossfade para tabs
- Timing: push = 250ms, modal = 200ms, tabs = 150ms

**Listas e cards**
- Estados: load, swipe, dismiss, reorder
- Animar: stagger na entrada, slide no swipe, fade no dismiss
- Timing: stagger = 50ms por item, swipe = 200ms

**Feedback de sistema**
- Tipos: toast, snackbar, banner, loading states
- Animar: slide-in para toast, fade para banner, shimmer para skeleton
- Timing: toast = 200ms, banner = 250ms

**Empty states e skeletons**
- Usar skeleton em vez de spinner para carregamento de conteúdo
- Animar shimmer com movimento left-to-right contínuo
- Timing: shimmer = 1.5s loop

## Feedback Háptico (mobile)

| Ação do usuário | Feedback háptico |
|---|---|
| Confirmação / sucesso | Impact leve (light impact) |
| Erro / alerta | Notification error |
| Seleção em lista | Selection feedback |
| Ação destrutiva confirmada | Impact médio (medium impact) |
| Long press ativado | Impact leve |

## O Que Nunca Animar

- Conteúdo estático que o usuário está lendo
- Animações de entrada em elementos abaixo do fold
- Qualquer loop infinito sem propósito funcional
- Movimentos que causam motion sickness (parallax agressivo, rotação, zoom)

## Checklist de Qualidade

- [ ] A animação tem propósito funcional (não é decoração)
- [ ] O timing está na faixa adequada para o tipo de movimento
- [ ] Há fallback para `prefers-reduced-motion`
- [ ] O feedback háptico está especificado para ações críticas (mobile)
- [ ] Estados intermediários (loading, processando) estão animados

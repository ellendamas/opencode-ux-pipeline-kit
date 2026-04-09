---
name: handoff-specs
description: Framework universal de handoff de design: anatomia de componente, estados, tokens, comportamentos, edge cases e critérios de aceite. Agnóstico de ferramenta, linguagem e framework. Carregue para qualquer handoff — para dev humano, ferramenta de geração por IA, ou documentação de design system.
license: MIT
compatibility: opencode
---

## O que esta skill contém

Framework universal de handoff: anatomia de componente, estados, tokens, comportamentos, acessibilidade, edge cases, critérios de aceite e formatos de entrega por destino (dev humano, IA, prototipagem, design system).

## Quando carregar esta skill

- Ao documentar especificação para desenvolvimento
- Ao revisar implementação de design
- Ao criar documentação de design system
- Ao gerar prompts para ferramentas de IA

## Princípio Central

```
O PRINCÍPIO DO HANDOFF AGNÓSTICO
────────────────────────────────
"O conteúdo do handoff é universal.
 O formato se adapta ao destino."

Um handoff bem feito pode ser consumido por:
  → Dev humano em qualquer linguagem (React, Swift, Kotlin, Flutter, Vue...)
  → Ferramenta de geração por IA (qualquer uma, atual ou futura)
  → Ferramenta de prototipagem (qualquer uma)
  → Documentação de design system

O que muda entre destinos é apenas o formato de entrega.
O que nunca muda é o conteúdo: anatomia, estados, tokens,
comportamentos, acessibilidade e edge cases.

Quando um novo destino surgir — nova ferramenta, nova linguagem,
novo framework — pergunte apenas:
"Este destino precisa de linguagem natural, de prompt estruturado,
 ou de especificação técnica?"
E aplique o formato correspondente ao conteúdo universal.
```

## Anatomia Universal de Componente

```
SPEC DE COMPONENTE: [Nome]
────────────────────────────────
Descrição: [o que faz, em 1 frase]
Tipo: [atômico / molecular / organismo / template]
Plataformas: [mobile iOS / mobile Android / web / todos]

ANATOMIA (elementos que o compõem):
  ├── [elemento-1]: [descrição + token de referência]
  ├── [elemento-2]: [descrição + token de referência]
  └── [elemento-3]: [descrição + token de referência]

DIMENSÕES:
  Altura: [valor ou auto]
  Largura: [valor, fill, hug ou range min–max]
  Padding interno: [top right bottom left em tokens]
  Gap entre elementos: [token de espaçamento]
  Border radius: [token]

TOKENS USADOS:
  Cor de fundo: [token]
  Cor de texto: [token]
  Cor de borda: [token]
  Tipografia: [token]
  Elevação/sombra: [token]
  [outros tokens relevantes]
```

## Estados de Componente

```
ESTADOS OBRIGATÓRIOS (documente todos que se aplicam):
────────────────────────────────
Default:    aparência em repouso, sem interação
Hover:      cursor sobre o elemento (web)
Focus:      foco via teclado ou acessibilidade
Active:     no momento do clique/toque (pressed)
Disabled:   não interativo — tokens: opacidade 38% ou token-disabled
Loading:    processando — spinner ou skeleton
Success:    ação concluída — cor + ícone + duração de exibição
Error:      falha — cor + mensagem + ação de recuperação
Empty:      sem conteúdo para exibir
Skeleton:   carregamento inicial — forma do componente sem conteúdo

Para cada estado, especifique:
  Visual: [o que muda visualmente — cor, ícone, texto, opacidade]
  Duração: [quanto tempo permanece, se temporário]
  Transição: [como entra e sai — timing + easing, se animado]
  Acessibilidade: [como o leitor de tela anuncia este estado]
```

## Comportamentos e Interações

```
COMPORTAMENTOS:
────────────────────────────────
Gatilho → Ação → Feedback → Estado resultante

Ex:
  Toque/clique → [ação executada] → [feedback visual/háptico] → [estado após]
  Long press   → [ação executada] → [feedback visual/háptico] → [estado após]
  Swipe        → [ação executada] → [feedback visual/háptico] → [estado após]
  Teclado      → [qual tecla] → [ação] → [estado após]

RESPONSIVIDADE (se aplicável):
  Mobile (< 768px):  [layout, comportamento]
  Tablet (768–1024): [layout, comportamento]
  Desktop (> 1024):  [layout, comportamento]

SCROLL / OVERFLOW:
  Conteúdo longo: [truncar com ellipsis / quebrar linha / scroll interno]
  Número máximo de linhas: [n] ou ilimitado
```

## Acessibilidade

```
ACESSIBILIDADE:
────────────────────────────────
Role ARIA:      [button / link / checkbox / dialog / etc.]
Label:          [texto que o leitor de tela lê — especificar se diferente do visual]
Descrição:      [aria-describedby, se houver contexto adicional]
Estado ARIA:    [aria-pressed / aria-expanded / aria-disabled / aria-selected]

Área de toque (mobile):
  Mínimo: 44×44pt (iOS) / 48×48dp (Android)
  Área atual: [valor]
  OK? [sim / não — se não, ajustar]

Navegação por teclado (web):
  Tab order: [posição lógica no fluxo]
  Indicador de foco: [visível? cor? estilo?]
  Atalho de teclado: [se houver]

Contraste:
  Texto sobre fundo: [ratio atual] — mínimo AA: 4.5:1
  Componente UI sobre fundo: [ratio atual] — mínimo: 3:1
```

## Edge Cases

```
EDGE CASES A CONTEMPLAR:
────────────────────────────────
Conteúdo:
  [ ] Texto muito curto (1 caractere)
  [ ] Texto muito longo (overflow)
  [ ] Texto em outro idioma (pode ser mais longo)
  [ ] Sem conteúdo (empty state)
  [ ] Conteúdo dinâmico (carregando)

Dados:
  [ ] Dados ausentes / null
  [ ] Dados inválidos
  [ ] Erro de rede / timeout
  [ ] Permissão negada

Contexto:
  [ ] Primeira vez do usuário
  [ ] Usuário retornando
  [ ] Modo escuro / claro
  [ ] Tamanho de fonte aumentado (acessibilidade)
  [ ] Conexão lenta

Para cada edge case: [o que o componente mostra / faz]
```

## Critérios de Aceite

```
CRITÉRIOS DE ACEITE:
────────────────────────────────
Regra: "Ficou igual ao design" não é critério.
Critério real é mensurável e verificável por qualquer pessoa.

Formato:
  ✓ [elemento] usa [token específico] com [valor exato]
  ✓ [comportamento] acontece em [timing exato] com [easing exato]
  ✓ [estado] exibe [feedback específico] por [duração]
  ✓ área de toque é de no mínimo [44×44pt / 48×48dp]
  ✓ leitor de tela anuncia "[texto exato]" ao focar

Ex:
  ✓ Botão primário usa cor-marca-primaria (#2E386D) com radius de espaco-2 (8px)
  ✓ Estado loading exibe spinner de 20px centralizado por até 10s
  ✓ Estado error exibe mensagem "[texto]" em cor-feedback-erro por 5s
  ✓ Transição default→pressed ocorre em 100ms com ease-out
  ✓ Leitor de tela anuncia "Confirmar transferência, botão" ao focar
```

## Formatos de Entrega por Destino

```
O CONTEÚDO DAS SEÇÕES 2–7 É SEMPRE O MESMO.
O QUE MUDA É O FORMATO DE ENTREGA:

────────────────────────────────
DESTINO: DEV HUMANO (qualquer linguagem/framework)
────────────────────────────────
Formato: linguagem natural estruturada + critérios de aceite
Tom: colaborativo, não prescritivo de implementação

Adaptações por contexto:
  iOS/Swift:    mencionar UIKit vs SwiftUI, pontos vs pixels, SF Symbols
  Android:      mencionar Compose vs XML, dp/sp, Material tokens
  Web/React:    mencionar props, variantes, CSS custom properties
  Flutter:      mencionar widgets, ThemeData, Material/Cupertino
  Qualquer outro: focar em comportamento e tokens — o dev conhece sua stack

Regra: nunca ditar a implementação. Especificar o resultado esperado.
"O botão deve ter aparência pressionada ao toque" → correto
"Use opacity: 0.8 no onPressed" → errado (prescreve implementação)

────────────────────────────────
DESTINO: FERRAMENTA DE GERAÇÃO POR IA
────────────────────────────────
Formato: prompt estruturado com constraints explícitos e hierarquia clara

Estrutura do prompt:
  1. Componente: [nome e descrição]
  2. Estrutura: [hierarquia de elementos em lista indentada]
  3. Tokens: [referências exatas de cor, tipo, espaço]
  4. Estados: [lista de estados com descrição visual de cada um]
  5. Comportamento: [gatilho → ação → feedback]
  6. Constraints: [o que NÃO fazer — evita alucinações]
  7. Acessibilidade: [role, label, contraste]

Nota sobre ferramentas: qualquer ferramenta que receba um prompt
estruturado com estes 7 blocos consegue gerar output consistente.
A ferramenta específica não importa — a estrutura do input importa.

────────────────────────────────
DESTINO: FERRAMENTA DE PROTOTIPAGEM
────────────────────────────────
Formato: spec de interação com foco em gatilhos, variáveis e timing

Estrutura:
  Estado inicial: [qual state é o ponto de partida]
  Gatilho: [evento que dispara — tap, hover, scroll, timer]
  Transição: [animação, timing, easing]
  Estado final: [qual state resulta]
  Variáveis: [se houver condicional — ex: se logado vs não logado]

────────────────────────────────
DESTINO: DOCUMENTAÇÃO DE DESIGN SYSTEM
────────────────────────────────
Formato: estrutura de componente com variantes, uso e anti-padrões

Adicionar às seções padrão:
  Variantes disponíveis: [lista de variações do componente]
  Quando usar: [contextos adequados]
  Quando não usar: [contextos inadequados — anti-padrões]
  Componentes relacionados: [outros componentes do sistema]
  Histórico de versões: [mudanças relevantes]
```

## Checklist de Revisão de Implementação

Para o modo revisão (dev implementou → designer revisa):

```
SEVERIDADES:
  🔴 Blocker:    impede uso ou viola acessibilidade — não vai para produção assim
  🟡 Major:      desvio visível e relevante — corrigir antes do merge
  🟢 Minor:      desvio pequeno — pode ir em iteração futura
  ⚪ Cosmético:  preferência, não erro — registrar, não bloquear

CHECKLIST DE REVISÃO:
  Visual:
    [ ] Cores correspondem aos tokens especificados
    [ ] Tipografia (fonte, tamanho, peso, line-height) corresponde
    [ ] Espaçamentos (padding, margin, gap) correspondem
    [ ] Border radius corresponde
    [ ] Elevação/sombra corresponde

  Estados:
    [ ] Todos os estados especificados foram implementados
    [ ] Transições entre estados estão presentes e com timing correto

  Comportamento:
    [ ] Todos os gatilhos disparam as ações corretas
    [ ] Responsividade funciona nos breakpoints especificados
    [ ] Edge cases foram tratados (empty, error, loading)

  Acessibilidade:
    [ ] Role ARIA correto
    [ ] Label correto (verificar com leitor de tela)
    [ ] Área de toque no mínimo especificado
    [ ] Indicador de foco visível
    [ ] Contraste aprovado

FORMATO DE REPORTE DE DESVIO:
  Severidade: [🔴/🟡/🟢/⚪]
  Elemento: [qual parte do componente]
  Esperado: [o que a spec diz]
  Implementado: [o que está na tela]
  Correção sugerida: [o que fazer]
```

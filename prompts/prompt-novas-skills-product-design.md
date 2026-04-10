# Prompt — Criação das 3 Skills Restantes do Pipeline Product Design

---

## CONTEXTO DO SISTEMA

Você está operando dentro do OpenCode no WSL (Ubuntu). O pipeline de Product Design tem
16 agentes e 14 skills em `~/.config/opencode/`.

Três agentes novos foram criados recentemente mas ainda não têm skills próprias:
- `product-strategy.md` → referencia `product-opportunity-tree` (não existe ainda)
- `facilitation.md` → referencia `facilitation-playbook` (não existe ainda)
- `dev-handoff.md` → sem skill própria ainda

Sua tarefa é criar as 3 skills que completam esses agentes.

---

## MODELO DE SKILL — SIGA EXATAMENTE ESTA ESTRUTURA

```markdown
---
name: <nome-kebab-case, idêntico ao nome do diretório>
description: <O que contém e quando carregar. Específico. Máximo 1024 chars.>
license: MIT
compatibility: opencode
---

## O que esta skill contém

<lista do que o agente vai encontrar aqui>

## Quando carregar esta skill

<situações específicas que devem triggar o carregamento>

## [Seção de conteúdo 1]

<conteúdo técnico>
```

**Regras obrigatórias:**
- `name` em kebab-case, idêntico ao nome do diretório
- Arquivo sempre chamado `SKILL.md` (maiúsculas)
- Apenas letras minúsculas, números e hífens no name

---

## SKILL 1 — product-opportunity-tree

**Diretório:** `~/.config/opencode/skills/product-opportunity-tree/`
**Arquivo:** `~/.config/opencode/skills/product-opportunity-tree/SKILL.md`

**name:** `product-opportunity-tree`

**description:** Frameworks de estratégia de produto: Opportunity Solution Tree, Jobs-to-be-Done, matriz de impacto × viabilidade, perguntas de discovery e priorização. Carregue quando precisar identificar oportunidades, avaliar iniciativas ou estruturar decisões de produto com evidência.

---

### Conteúdo que esta skill deve ter:

**Seção 1 — Opportunity Solution Tree (Teresa Torres)**

Explique o framework e forneça o template de preenchimento:

```
OPPORTUNITY SOLUTION TREE
─────────────────────────────
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

**Seção 2 — Jobs-to-be-Done**

O framework e o template de entrevista JTBD:

```
JOB-TO-BE-DONE
─────────────────────────────
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

**Seção 3 — Perguntas de Discovery de Produto**

Organizadas por objetivo:

```
DESCOBRIR SE O PROBLEMA EXISTE E É REAL
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

DESCOBRIR CRITÉRIOS DE SUCESSO
  "Como você saberia que esse problema foi resolvido?"
  "O que mudaria no seu dia a dia?"
  "Como você mediria se está melhor ou pior?"
```

**Seção 4 — Matriz de Impacto × Viabilidade**

```
MATRIZ DE PRIORIZAÇÃO
─────────────────────────────
Para cada iniciativa, pontue de 1 a 5:

  Impacto no usuário:    quanto resolve a dor identificada
  Impacto no negócio:    quanto move a métrica de outcome
  Viabilidade técnica:   quão complexo de implementar
  Viabilidade de dados:  temos evidência suficiente para apostar nisso
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

**Seção 5 — Níveis de Evidência**

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

**Seção 6 — Checklist de Qualidade**

```
Antes de entregar qualquer análise de produto:
  [ ] O outcome está definido como métrica, não como feature
  [ ] As oportunidades estão na voz do usuário, não na voz do negócio
  [ ] Cada oportunidade tem pelo menos uma evidência citada
  [ ] A solução recomendada tem nível de evidência declarado
  [ ] Há pelo menos um experimento proposto para validar
  [ ] Alternativas foram consideradas e descarte foi justificado
```

---

## SKILL 2 — facilitation-playbook

**Diretório:** `~/.config/opencode/skills/facilitation-playbook/`
**Arquivo:** `~/.config/opencode/skills/facilitation-playbook/SKILL.md`

**name:** `facilitation-playbook`

**description:** Templates e roteiros detalhados de facilitação: Design Sprint, How Might We, Design Studio, Story Mapping, Trade-off Slam, RICE colaborativo. Carregue quando precisar planejar uma sessão de workshop, estruturar uma dinâmica específica ou documentar decisões e trade-offs de uma sessão.

---

### Conteúdo que esta skill deve ter:

**Seção 1 — Estrutura Universal de Qualquer Sessão**

```
PLANEJAMENTO DA SESSÃO
─────────────────────────────
Objetivo: [decisão ou output concreto ao final]
Tipo: divergente (gerar opções) / convergente (escolher) / alinhamento
Participantes: [perfis] — mínimo: [n] / máximo: [n]
Duração: [total] dividido em [blocos]
Material: [post-its, quadro, Miro/FigJam, timer, etc.]

Pré-sessão (o facilitador faz antes):
  [ ] Objetivo claro e acordado com quem pediu a sessão
  [ ] Lista de participantes com papéis definidos
  [ ] Material preparado / quadro configurado
  [ ] Pergunta central da sessão definida em 1 frase

Durante a sessão (sequência):
  1. Check-in (5 min): aquecer, nivelar contexto
  2. Enquadramento (5–10 min): qual problema estamos resolvendo
  3. Atividade principal (bulk do tempo)
  4. Síntese (10–15 min): o que decidimos / o que aprendemos
  5. Próximos passos (5 min): dono + prazo para cada ação

Pós-sessão (o facilitador faz depois):
  [ ] Documento de decisão enviado em até 24h
  [ ] Premissas assumidas registradas
  [ ] Alternativas descartadas e razão registradas
```

**Seção 2 — How Might We (HMW)**

Roteiro completo passo a passo:

```
HOW MIGHT WE
─────────────────────────────
Objetivo: gerar oportunidades a partir de problemas identificados
Participantes: 4–8 pessoas
Duração: 45–90 min

Passo 1 — Revisão de insights (10 min)
  Apresente os principais achados de pesquisa ou o problema.
  Regra: fatos, não soluções.

Passo 2 — Geração de HMWs (15 min, individual e silencioso)
  Cada participante escreve perguntas no formato:
  "Como poderíamos [verbo] [objeto] para [resultado]?"
  Meta: 5–10 HMWs por pessoa.
  Regra: sem filtro, sem crítica, sem solução disfarçada de pergunta.

Passo 3 — Compartilhar e agrupar (15 min)
  Cada pessoa lê seus HMWs em voz alta.
  Grupo agrupa os similares em temas.

Passo 4 — Votação por pontos (10 min)
  Cada participante tem 3 votos (podem colocar todos em 1 se quiser).
  Os 3 HMWs mais votados viram foco da próxima atividade.

Passo 5 — Síntese
  HMWs priorizados: [lista]
  Próximo passo: [design studio / exploração / pesquisa adicional]
```

**Seção 3 — Design Studio**

```
DESIGN STUDIO
─────────────────────────────
Objetivo: convergir em direção de solução através de iteração rápida
Participantes: 3–6 designers/PMs
Duração: 60–120 min

Rodada 1 — Esboço individual (8 min)
  Cada participante esboça 3 ideias diferentes para o problema.
  Regra: sem polimento, sem explicação ainda. Apenas esboço.

Apresentação 1 (2 min por pessoa)
  Cada um apresenta seus 3 esboços.
  Audiência: apenas ouve, não critica ainda.

Crítica estruturada (3 min por pessoa)
  Para cada apresentação, o grupo responde:
  - "O que eu gostei:" [pontos fortes]
  - "O que eu não entendi:" [dúvidas]
  - "O que poderia ser melhor:" [oportunidades]
  Regra: crítica ao trabalho, nunca à pessoa.

Rodada 2 — Refinamento (8 min)
  Cada participante incorpora o feedback e refina.
  Pode combinar ideias de outros.

Apresentação 2 + Votação
  Apresenta versão refinada.
  Grupo vota: qual direção seguir?

Síntese:
  Direção escolhida: [descrição]
  Elementos de outras ideias a incorporar: [lista]
  Próximo passo: [protótipo / spec / teste]
```

**Seção 4 — Trade-off Slam**

Para resolver impasses entre design e engenharia:

```
TRADE-OFF SLAM
─────────────────────────────
Objetivo: tomar decisão transparente quando há opções com custos diferentes
Participantes: design + engenharia + PM (máximo 6)
Duração: 30–45 min

Setup:
  Defina as 2–3 opções em disputa claramente antes de começar.
  Cada opção tem um "advogado" — alguém que vai apresentá-la.

Para cada opção (5 min por opção):
  O advogado apresenta:
  1. O que esta opção entrega para o usuário
  2. O custo real (tempo de dev, dívida técnica, manutenção futura)
  3. O que abre de possibilidade no futuro
  4. O que fecha de possibilidade no futuro

Discussão estruturada (10 min):
  Pergunta 1: "Qual o pior cenário de cada opção?"
  Pergunta 2: "Com qual pior cenário conseguimos viver melhor?"
  Pergunta 3: "Há uma versão que pega o melhor dos dois?"

Decisão (5 min):
  Opção escolhida: [nome]
  Razão: [por que esta]
  O que estamos abrindo mão conscientemente: [lista]
  Quando revisitar esta decisão: [gatilho ou data]
```

**Seção 5 — Story Mapping**

```
STORY MAPPING
─────────────────────────────
Objetivo: mapear a jornada do usuário e priorizar o que entra em cada release
Participantes: time completo de produto (design + dev + PM)
Duração: 2–3 horas

Linha 1 — Atividades (horizontal, nível mais alto)
  As grandes etapas da jornada do usuário.
  Ex: Descobrir → Cadastrar → Configurar → Usar → Compartilhar

Linha 2 — Tarefas (horizontal, dentro de cada atividade)
  O que o usuário faz em cada etapa.
  Ex: dentro de "Cadastrar": Inserir email / Criar senha / Confirmar conta

Linhas abaixo — Detalhes e variações (vertical)
  Histórias específicas, edge cases, melhorias futuras.
  Quanto mais abaixo, menor a prioridade.

Cortes de release (linhas horizontais através do mapa):
  Release 1 (MVP): o mínimo que entrega o job principal
  Release 2: o que remove as maiores fricções do MVP
  Release 3: o que diferencia do mercado

Resultado:
  Mapa completo fotografado / exportado
  Backlog inicial extraído por release
  Riscos e dependências sinalizados
```

**Seção 6 — Documentação de Decisão (template universal)**

```
REGISTRO DE DECISÃO
─────────────────────────────
Data: [data]
Sessão: [nome/tipo]
Participantes: [lista de perfis, não necessariamente nomes]

Contexto:
  [O que precisávamos decidir e por quê agora]

Opções consideradas:
  Opção A: [descrição resumida]
    Prós: [lista]
    Contras: [lista]

  Opção B: [descrição resumida]
    Prós: [lista]
    Contras: [lista]

Decisão:
  [O que foi decidido em 1 frase clara]

Justificativa:
  [Por que esta opção, não as outras — máximo 3 razões]

Premissas assumidas:
  [O que estamos assumindo que é verdade mas não provamos]
  [Se alguma premissa for falsa, a decisão deve ser revisitada]

Próximos passos:
  [ação] → [dono] → [prazo]

Quando revisitar esta decisão:
  [gatilho específico ou data]
```

**Seção 7 — Como Lidar com Dinâmicas Difíceis**

```
SITUAÇÃO: uma pessoa domina a conversa
  → Técnica do round-robin: cada pessoa fala 1 vez antes de alguém falar 2 vezes.
  → "Vamos ouvir quem ainda não falou sobre isso."

SITUAÇÃO: o grupo não consegue decidir
  → Pergunte: "O que precisaria ser verdade para cada opção ser a certa?"
  → Se ainda sem saída: "Qual decisão é mais fácil de reverter se errarmos?"

SITUAÇÃO: alguém invalida ideias na fase de geração
  → Lembre a regra: "Agora estamos divergindo. Crítica vem depois."
  → Se persistir: separe fisicamente a fase de geração da fase de crítica.

SITUAÇÃO: stakeholder sênior pressiona por uma direção específica
  → Nomeie o que está acontecendo: "Estou ouvindo uma preferência forte. Vamos
    garantir que exploramos as alternativas antes de decidir."
  → Use o Trade-off Slam para dar voz às alternativas de forma estruturada.

SITUAÇÃO: a sessão termina sem decisão clara
  → Antes de encerrar: "O que nos impede de decidir agora?"
  → Se for falta de informação: defina exatamente o que precisa ser descoberto,
    por quem e até quando, antes de remarcar a sessão.
```

---

## SKILL 3 — handoff-specs

**Diretório:** `~/.config/opencode/skills/handoff-specs/`
**Arquivo:** `~/.config/opencode/skills/handoff-specs/SKILL.md`

**name:** `handoff-specs`

**description:** Framework universal de handoff de design: anatomia de componente, estados, tokens, comportamentos, edge cases e critérios de aceite. Agnóstico de ferramenta, linguagem e framework. Carregue para qualquer handoff — para dev humano (qualquer stack), ferramenta de geração por IA, ou documentação de design system.

---

### Conteúdo que esta skill deve ter:

**Seção 1 — Princípio Central**

```
O PRINCÍPIO DO HANDOFF AGNÓSTICO
─────────────────────────────────
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

**Seção 2 — Anatomia Universal de Componente**

```
SPEC DE COMPONENTE: [Nome]
─────────────────────────────────
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

**Seção 3 — Estados de Componente**

```
ESTADOS OBRIGATÓRIOS (documente todos que se aplicam):
─────────────────────────────────
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

**Seção 4 — Comportamentos e Interações**

```
COMPORTAMENTOS:
─────────────────────────────────
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

**Seção 5 — Acessibilidade**

```
ACESSIBILIDADE:
─────────────────────────────────
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

**Seção 6 — Edge Cases**

```
EDGE CASES A CONTEMPLAR:
─────────────────────────────────
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

**Seção 7 — Critérios de Aceite**

```
CRITÉRIOS DE ACEITE:
─────────────────────────────────
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

**Seção 8 — Formatos de Entrega por Destino**

```
O CONTEÚDO DAS SEÇÕES 2–7 É SEMPRE O MESMO.
O QUE MUDA É O FORMATO DE ENTREGA:

─────────────────────────────────
DESTINO: DEV HUMANO (qualquer linguagem/framework)
─────────────────────────────────
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

─────────────────────────────────
DESTINO: FERRAMENTA DE GERAÇÃO POR IA
─────────────────────────────────
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

─────────────────────────────────
DESTINO: FERRAMENTA DE PROTOTIPAGEM
─────────────────────────────────
Formato: spec de interação com foco em gatilhos, variáveis e timing

Estrutura:
  Estado inicial: [qual state é o ponto de partida]
  Gatilho: [evento que dispara — tap, hover, scroll, timer]
  Transição: [animação, timing, easing]
  Estado final: [qual state resulta]
  Variáveis: [se houver condicional — ex: se logado vs não logado]

─────────────────────────────────
DESTINO: DOCUMENTAÇÃO DE DESIGN SYSTEM
─────────────────────────────────
Formato: estrutura de componente com variantes, uso e anti-padrões

Adicionar às seções padrão:
  Variantes disponíveis: [lista de variações do componente]
  Quando usar: [contextos adequados]
  Quando não usar: [contextos inadequados — anti-padrões]
  Componentes relacionados: [outros componentes do sistema]
  Histórico de versões: [mudanças relevantes]
```

**Seção 9 — Checklist de Revisão de Implementação**

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

---

## EXECUÇÃO — PASSO A PASSO

Execute nesta ordem:

```
Passo 1: Confirme o estado atual
  ls ~/.config/opencode/skills/

Passo 2: Crie a skill product-opportunity-tree
  mkdir ~/.config/opencode/skills/product-opportunity-tree/
  Crie ~/.config/opencode/skills/product-opportunity-tree/SKILL.md

Passo 3: Crie a skill facilitation-playbook
  mkdir ~/.config/opencode/skills/facilitation-playbook/
  Crie ~/.config/opencode/skills/facilitation-playbook/SKILL.md

Passo 4: Crie a skill handoff-specs
  mkdir ~/.config/opencode/skills/handoff-specs/
  Crie ~/.config/opencode/skills/handoff-specs/SKILL.md

Passo 5: Atualize o agente product-strategy.md
  Adicione na tabela de skills:
  | Priorizar iniciativas com evidência de negócio | `product-opportunity-tree` |
  (as linhas já existentes devem ser mantidas)

Passo 6: Atualize o agente facilitation.md
  Adicione na tabela de skills:
  | Lidar com dinâmicas difíceis em sessões | `facilitation-playbook` |
  (as linhas já existentes devem ser mantidas)

Passo 7: Atualize o agente dev-handoff.md
  Adicione na tabela de skills:
  | Qualquer handoff de componente para qualquer destino | `handoff-specs` |
  | Revisão de implementação com critérios de aceite     | `handoff-specs` |
  (as linhas já existentes devem ser mantidas)

Passo 8: Confirme o resultado final
  ls ~/.config/opencode/skills/ | wc -l   # deve retornar 17
```

---

## CRITÉRIOS DE QUALIDADE

Antes de encerrar, verifique:

- [ ] 3 skills criadas com `name`, `description`, `license: MIT`, `compatibility: opencode`
- [ ] Nome de cada diretório idêntico ao `name` no frontmatter
- [ ] Arquivos chamados `SKILL.md` (maiúsculas)
- [ ] `product-strategy.md` atualizado com referência a `product-opportunity-tree`
- [ ] `facilitation.md` atualizado com referência a `facilitation-playbook`
- [ ] `dev-handoff.md` atualizado com referência a `handoff-specs`
- [ ] Nenhum arquivo existente teve conteúdo removido

---

## OBSERVAÇÃO FINAL

A skill `handoff-specs` foi desenhada intencionalmente sem mencionar
ferramentas específicas (Figma, v0, Lovable, etc.). Isso é uma decisão
de arquitetura: o framework agnóstico não envelhece quando surgem
novas ferramentas. A Seção 8 ensina o agente a adaptar o formato para
qualquer destino — presente ou futuro — sem precisar atualizar a skill.

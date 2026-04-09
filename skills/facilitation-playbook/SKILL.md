---
name: facilitation-playbook
description: Templates e roteiros detalhados de facilitação: Design Sprint, How Might We, Design Studio, Story Mapping, Trade-off Slam, RICE colaborativo. Carregue quando precisar planejar uma sessão de workshop, estruturar uma dinâmica específica ou documentar decisões e trade-offs de uma sessão.
license: MIT
compatibility: opencode
---

## O que esta skill contém

Templates e roteiros de facilitação: Design Sprint, How Might We, Design Studio, Story Mapping, Trade-off Slam, RICE colaborativo, e templates universais de documentação de decisão.

## Quando carregar esta skill

- Ao planejar qualquer workshop ou sessão colaborativa
- Ao estruturar uma dinâmica de design sprint
- Ao facilitar sessões de co-criação ou alinhamento
- Ao documentar decisões e trade-offs de sessões

## Estrutura Universal de Qualquer Sessão

```
PLANEJAMENTO DA SESSÃO
────────────────────────────
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

## How Might We (HMW)

Roteiro completo passo a passo:

```
HOW MIGHT WE
────────────────────────────
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

## Design Studio

```
DESIGN STUDIO
────────────────────────────
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

## Trade-off Slam

Para resolver impasses entre design e engenharia:

```
TRADE-OFF SLAM
────────────────────────────
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

## Story Mapping

```
STORY MAPPING
────────────────────────────
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

## Documentação de Decisão (template universal)

```
REGISTRO DE DECISÃO
────────────────────────────
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

## Como Lidar com Dinâmicas Difíteis

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

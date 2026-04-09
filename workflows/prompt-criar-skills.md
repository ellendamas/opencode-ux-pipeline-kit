# Prompt — Criação de Agent Skills a partir dos Agentes UX

---

## CONTEXTO DO SISTEMA

Você está operando dentro do OpenCode no WSL (Ubuntu). Temos um pipeline de 12 agentes de UX localizados em:

```
~/.config/opencode/agents/
```

Cada agente `.md` tem dois tipos de conteúdo misturados:
1. **Identidade e protocolo** → fica no agente
2. **Conhecimento técnico de referência** → deve virar uma Skill separada

As Skills do OpenCode vivem em:
```
~/.config/opencode/skills/<nome-da-skill>/SKILL.md
```

Cada Skill é carregada **sob demanda** pelo agente que precisa dela — não fica em memória o tempo todo. Isso economiza tokens e mantém os agentes enxutos.

---

## SUA TAREFA

1. Leia cada arquivo em `~/.config/opencode/agents/` (exceto `ux-orchestrator.md`)
2. Identifique o bloco de conhecimento técnico de referência de cada agente (frameworks, checklists, templates, escalas, padrões)
3. Extraia esse conteúdo como uma Skill seguindo **exatamente** o modelo abaixo
4. Crie o arquivo em `~/.config/opencode/skills/<nome>/SKILL.md`
5. Reescreva o agente original removendo o conteúdo extraído e adicionando uma instrução de quando carregar a skill

---

## MODELO DE SKILL — SIGA EXATAMENTE ESTA ESTRUTURA

```markdown
---
name: <nome-kebab-case-maximo-64-chars>
description: <O que esta skill contém e quando o agente deve carregá-la. Seja específico — o agente usa este texto para decidir se carrega ou não. Máximo 1024 chars.>
license: MIT
compatibility: opencode
---

## O que esta skill contém

<Lista do que o agente vai encontrar aqui — frameworks, templates, checklists, escalas>

## Quando carregar esta skill

<Situações específicas que devem triggar o carregamento — ex: "quando receber prints para análise heurística", "quando precisar definir tokens de cor">

## [Seção de Conteúdo 1]

<conteúdo técnico extraído do agente — preservar formatação original>

## [Seção de Conteúdo 2]

<continua...>
```

### Regras de nomenclatura (obrigatórias):
- `name` em kebab-case: `nielsen-heuristicas`, `wcag-checklist`, `research-templates`
- O nome do diretório deve ser **idêntico** ao `name` no frontmatter
- Apenas letras minúsculas, números e hífens simples
- Sem `--` consecutivos, sem iniciar ou terminar com `-`

---

## MODELO DE AGENTE APÓS EXTRAÇÃO

Após criar a skill, reescreva o agente assim:

```markdown
---
description: <manter original>
mode: subagent
temperature: <manter original>
tools:
  write: true
  edit: false
  bash: false
---

# <Nome do Agente>

<Manter: personalidade, papel, abordagem — 3 a 5 linhas>

## Quando carregar skills

Antes de executar qualquer tarefa, carregue a skill correspondente:

| Situação | Skill a carregar |
|---|---|
| <situação específica> | `<nome-da-skill>` |
| <situação específica> | `<nome-da-skill>` |

## Protocolo de Execução

<Manter: qualquer protocolo de output, formato de entrega, critérios de qualidade — mas sem os frameworks detalhados, que foram para a skill>

## Output

<Manter: o bloco de frontmatter de output markdown>
```

---

## MAPEAMENTO ESPERADO

Use esta tabela como referência — mas **leia os arquivos reais** para confirmar o que extrair:

| Agente | Skill a criar | Conteúdo a extrair |
|---|---|---|
| `heuristic-evaluator.md` | `nielsen-heuristicas` | As 10 heurísticas + escala de severidade + protocolo de avaliação + template comparativo |
| `accessibility.md` | `wcag-checklist` | Referência WCAG 2.1 + templates de spec por componente + checklists iOS/Android |
| `visual-design.md` | `design-tokens` | Sistema de tokens + spec de componente + padrões por plataforma |
| `content-strategy.md` | `microcopy-patterns` | Framework voz/tom + padrões de microcopy + checklist de qualidade |
| `ux-research.md` | `research-templates` | Templates de persona, journey map, roteiro de entrevista, formato de insight |
| `prototype-testing.md` | `usability-testing` | Guia de fidelidade + plano de teste + SUS + scorecard por tarefa |
| `data-analyst.md` | `product-metrics` | Hierarquia de métricas + análise de funil + design de A/B + KPI framework |
| `designops.md` | `design-roi` | Frameworks de ROI + calculadora + métricas de maturidade + template executivo |
| `data-normalizer.md` | `taxonomy-ux` | Terminologia canônica + gates de qualidade + protocolo de normalização |
| `ux-pitch.md` | `pitch-framework` | Framework P→E→S→I + estrutura 7 slides + adaptação por audiência + extração de evidências |
| `ux-writing.md` | `copy-patterns` | Copy por elemento de interface + flags de revisão |
| `ia-ml-ux.md` | `ai-ux-patterns` | Princípios de IA UX + padrões por tipo de feature + linguagem por confiança + checklist ético |

---

## EXECUÇÃO — PASSO A PASSO

Execute nesta ordem para não perder nada:

```
Passo 1: Liste os arquivos em ~/.config/opencode/agents/ para confirmar o que existe
Passo 2: Leia o primeiro agente
Passo 3: Crie o diretório ~/.config/opencode/skills/<nome>/
Passo 4: Crie o SKILL.md com o conteúdo extraído
Passo 5: Reescreva o agente original removendo o conteúdo extraído
Passo 6: Confirme que o agente original ainda tem: identidade + instrução de quando carregar a skill + formato de output
Passo 7: Repita para o próximo agente
Passo 8: Ao final, liste todos os arquivos criados em ~/.config/opencode/skills/ para confirmar
```

---

## CRITÉRIOS DE QUALIDADE

Antes de encerrar, verifique:

- [ ] Cada skill tem `name` e `description` no frontmatter
- [ ] O `name` é idêntico ao nome do diretório
- [ ] Cada agente reescrito ainda tem personalidade clara
- [ ] Cada agente reescrito tem instrução explícita de quando carregar qual skill
- [ ] Nenhum conteúdo técnico duplicado entre agente e skill
- [ ] Skills ficam em `~/.config/opencode/skills/<nome>/SKILL.md` (SKILL.md em maiúsculas)

---

## OBSERVAÇÃO FINAL

O agente `ux-orchestrator.md` **não gera skill**. Ele é o coordenador e não tem conteúdo técnico de referência para extrair — apenas protocolos de orquestração que devem permanecer nele.

Se encontrar qualquer ambiguidade sobre o que é "identidade" vs "conhecimento técnico", prefira deixar no agente e sinalizar para revisão humana.

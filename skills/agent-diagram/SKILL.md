---
name: agent-diagram
description: >
  Gera diagramas profissionais de sistemas multi-agente em draw.io (.drawio) e visualizações
  interativas inline. Use SEMPRE que o usuário quiser documentar, visualizar ou exportar a
  arquitetura de um time de agentes — seja um pipeline sequencial (como VoC), um time com
  orquestrador (como Marketing Agency), ou qualquer sistema com sub-agentes especializados.
  Também use quando o usuário mencionar: "fluxo de agentes", "diagrama de agentes",
  "documentar meu sistema", "exportar para draw.io", "visualizar pipeline de agentes",
  "adicionar skills e tools ao diagrama", ou quiser enriquecer um diagrama existente com
  detalhes de permissões, skills e outputs.
---

# Agent Diagram Skill

Gera diagramas de sistemas multi-agente em dois formatos:
1. **Visualização interativa** inline (SVG/HTML via Visualizer)
2. **Arquivo .drawio** exportável para draw.io / diagrams.net

Leia `references/patterns.md` para os padrões de arquitetura suportados.
Leia `references/drawio-template.md` para o template XML base do draw.io.

---

## Fluxo de trabalho

```
1. IDENTIFICAR padrão de arquitetura (sequencial / orquestrador / híbrido)
2. MAPEAR agentes: nome, função, skills, tools, permissões, outputs
3. GERAR visualização inline (Visualizer)
4. GERAR arquivo .drawio
5. APRESENTAR arquivo ao usuário
```

---

## Passo 1 — Identificar o padrão

Leia os arquivos de definição dos agentes (`.md`, `CLAUDE.md`, `.yaml`) e classifique:

| Padrão | Quando usar | Exemplo |
|---|---|---|
| **Sequencial** | Agentes executam em ordem fixa, output de um vira input do próximo | VoC Pipeline |
| **Orquestrador** | Um agente central delega para N sub-agentes (paralelo ou por cenário) | Marketing Agency CMO |
| **Híbrido** | Orquestrador + sub-times sequenciais | MI Team (Manager → agentes paralelos → Synthesis → Report) |

---

## Passo 2 — Mapear cada agente

Para cada agente, extraia obrigatoriamente:

```
nome:        string (ex: "VoC Orchestrator")
função:      string curta (ex: "valida checklist · dispara pipeline · log")
skills:      lista de SKILL.md referenciados
tools_bash:  permissões bash declaradas no frontmatter (allow / ask / bloqueado)
tool_task:   lista de sub-agentes que pode disparar via task:
tool_edit:   "allow" | "ask" | ausente
outputs:     artefatos produzidos (ex: "report.md", "execution.log.md")
lê:          arquivos de contexto que consome (ex: "voc.context.md", "taxonomy.md")
cor:         atribuída conforme grupo (ver seção Paleta abaixo)
```

Se os arquivos de agentes não estiverem disponíveis, pergunte ao usuário antes de prosseguir.

---

## Passo 3 — Paleta de cores padrão

Use consistentemente entre diagrama inline e .drawio:

| Grupo | Papel | Fill | Stroke |
|---|---|---|---|
| Roxo `#e1d5e7` / `#9673a6` | Orquestrador, Manager, Reporter final | `#e1d5e7` | `#9673a6` |
| Azul `#dae8fc` / `#6c8ebf` | Diagnóstico, Auditoria, Ingestão | `#dae8fc` | `#6c8ebf` |
| Verde `#d5e8d4` / `#82b366` | Análise, Estratégia, Inteligência | `#d5e8d4` | `#82b366` |
| Amarelo `#fff2cc` / `#d6b656` | Execução, SEO, Ads, Conteúdo | `#fff2cc` | `#d6b656` |
| Laranja `#ffe6cc` / `#d79b00` | Otimização, CRO, testes | `#ffe6cc` | `#d79b00` |
| Vermelho `#f8cecc` / `#b85450` | Alertas, retrabalho, bloqueios, `edit: ask` | `#f8cecc` | `#b85450` |
| Cinza `#f5f5f5` / `#666666` | Contexto externo, outputs neutros, briefing | `#f5f5f5` | `#666666` |

---

## Passo 4 — Anatomia visual de cada nó

Cada agente no diagrama deve conter até 4 sub-elementos visuais (células separadas no .drawio, texto agrupado no SVG inline):

```
┌─────────────────────────────────────────┐  ← nó principal (cor do grupo)
│  **Nome do Agente**                     │
│  função resumida                        │
├────────────────┬────────────────────────┤
│ skill: X.md    │ tool: bash · task ...  │  ← amarelo (skill) | verde (tool)
├────────────────┴────────────────────────┤
│ output: artefato.md / tipo              │  ← cor do grupo (mais escura)
│ lê: arquivo-contexto.md                 │  ← cinza claro (opcional)
└─────────────────────────────────────────┘
```

**Regras de exibição:**
- Se o agente não tem `bash` → omitir célula de tool bash
- Se o agente não tem `skill` → omitir célula de skill
- `edit: allow` → célula azul; `edit: ask` → célula vermelha
- `task:` com lista de agentes → célula verde com nomes
- Alertas e loops de falha → nós vermelhos laterais com seta tracejada

---

## Passo 5 — Elementos estruturais do diagrama

### Containers (swimlanes)
Use `swimlane` para agrupar:
- Agentes em paralelo (sub-times)
- Cenários de ativação (quando houver)
- Camadas sequenciais

### Setas
| Tipo | Estilo draw.io | Uso |
|---|---|---|
| Fluxo principal | `edgeStyle=orthogonalEdgeStyle` sólida | sequência normal |
| Loop de retrabalho | `dashed=1;strokeColor=#b85450` | volta ao sub-agente com feedback |
| Input externo | sólida cinza | fontes / arquivos de contexto |
| Alerta lateral | sólida vermelha | disparo condicional |

### Legenda
Sempre incluir no canto superior direito com 4 itens:
- Skill (amarelo)
- Tool bash/task (verde)
- edit: ask (vermelho)
- edit: allow (azul)

---

## Passo 6 — Gerar o .drawio

Estrutura base do XML:

```xml
<mxfile host="app.diagrams.net" version="21.0.0">
  <diagram name="[Nome do Sistema]" id="[id-unico]">
    <mxGraphModel dx="1422" dy="762" grid="1" gridSize="10"
      pageWidth="[auto]" pageHeight="[auto]">
      <root>
        <mxCell id="0" />
        <mxCell id="1" parent="0" />
        <!-- células aqui -->
      </root>
    </mxGraphModel>
  </diagram>
</mxfile>
```

**Convenções de IDs:** use prefixos semânticos (`orch`, `ing`, `nor`, `ana`, `rep`, `cmo`, `sub_`, `e_` para edges, `leg` para legenda).

**pageWidth / pageHeight:** calcule em função do número de agentes:
- Até 5 agentes sequenciais: `800 × 1100`
- 6–10 agentes em orquestrador: `1400 × 1100`
- Sistema híbrido completo: `1400 × 1400`

Salve em `/mnt/user-data/outputs/[nome-sistema].drawio`.

---

## Passo 7 — Gerar visualização inline

Antes de gerar o SVG/HTML, leia o módulo `diagram` do Visualizer.

**Estrutura recomendada para o inline:**
- Mesmo layout top-down do .drawio
- Nós clicáveis com `sendPrompt()` para perguntas de follow-up
- Cores idênticas ao .drawio para consistência
- Containers tracejados para grupos paralelos

---

## Checklist de qualidade antes de entregar

- [ ] Todos os agentes mapeados com skill + tool + output
- [ ] Paleta de cores consistente entre inline e .drawio
- [ ] Legenda presente no .drawio
- [ ] Loops de retrabalho e alertas representados
- [ ] Arquivos de contexto (`context.md`, `taxonomy.md`) aparecem como nós laterais
- [ ] Arquivo salvo em `/mnt/user-data/outputs/` e apresentado com `present_files`
- [ ] Visualização inline gerada antes ou junto com o arquivo

---

## Saídas esperadas

| Entrega | Obrigatório |
|---|---|
| Visualização interativa inline | ✅ sempre |
| Arquivo `.drawio` exportável | ✅ sempre |
| Versão v2 se já existia diagrama anterior | ✅ quando aplicável |

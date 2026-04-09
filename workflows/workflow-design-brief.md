---
description: "Fluxo completo desde o Épico do PO até o Design Brief validado e as User Stories de dev prontas para criação. Use quando o PO tiver criado um Épico com problema definido e o design precisar pensar na experiência e documentar para validação."
---

# Workflow — Design Brief e Validação com PO

## Quando usar este workflow

- PO criou um Épico no Jira com problema definido
- Design precisa pensar na experiência e documentar para o PO validar
- Entregável: Design Brief como Task no Jira com status `Entregue ao PO`, pronto para o PO criar User Stories de dev

## Agentes envolvidos

| Agente | Papel neste workflow |
|---|---|
| `ux-orchestrator` | Lê o Épico via MCP, coordena o fluxo, decide se discovery pode ser pulado |
| `product-strategy` | Opcional — validação de oportunidade antes do discovery |
| `ux-research` | **Obrigatório** — evidência de usuário que âncora o design |
| `visual-design` | Specs de componentes, tokens, todos os estados |
| `ux-writing` | Microcopy completo e revisado |
| `heuristic-evaluator` | QA visual antes do brief (opcional) |
| `design-brief` | Produz o brief, gerencia a Task no Jira em todos os cenários |

---

## Etapa 0 — Leia o Épico

```
orquestrador → MCP atlassian-rovo → busca Épico [ID]
  ↓
Confirma: título, problema, critérios de aceite do PO
Identifica: tasks existentes, próximo número DB disponível
Avalia: o problema está suficientemente definido para o design avançar?
```

**Se o Épico não tiver problema claramente definido:** pare e solicite ao PO antes de acionar qualquer agente de design.

**Se o Épico tiver evidências suficientes:** registre isso para o `ux-research` usar como ponto de partida, não repetir do zero.

---

## Etapa 1 — Discovery

**Discovery é obrigatório.** Acione `ux-research`.

A única exceção é quando o orquestrador informa explicitamente `skip_discovery: true`, com uma razão documentada:
- Tela é variação menor de padrão existente já validado com usuários
- Discovery foi feito em sprint anterior e as evidências ainda são válidas
- PO indicou que o problema já foi suficientemente validado externamente

**Se pular:** o `design-brief` deve registrar o motivo na seção "Evidência de discovery" do template.

**Se não pular:** o output do `ux-research` alimenta diretamente a seção "Evidência de discovery" do brief — não é opcional preenchê-la.

---

## Etapa 2 — Design da Experiência

Acione em paralelo após o `ux-research` entregar:

```
[visual-design] → specs de componentes, estados, tokens, layout
[ux-writing]    → microcopy completo (todos os estados da tabela do brief)
```

**Condição de saída desta etapa:** ambos os agentes entregaram.
Microcopy ausente bloqueia o próximo passo — o `design-brief` não inventa copy.

---

## Etapa 3 — QA Visual (opcional)

Acione `heuristic-evaluator` com screenshots ou specs das telas.

**Pule quando:** tela é variação menor de padrão existente no DS e o time tem confiança no output do `visual-design`.

**Use quando:** tela é nova, fluxo complexo, ou há dúvidas sobre hierarquia e densidade.

---

## Etapa 4 — Design Brief

Acione `design-brief` com todos os outputs coletados. O agente determina o cenário (A a E) e age de acordo.

Para um brief novo (Cenário A), entrega:
- Brief completo no formato acordado
- Task criada no Jira com status `Entregue ao PO`
- Link da Task para rastreabilidade
- Resumo das questões em aberto (0 = PO pode criar User Stories imediatamente)

---

## Etapa 5 — Ciclo de validação com o PO

O workflow **pausa aqui**. O que acontece a seguir depende do retorno do PO:

```
PO aprova sem ressalvas
  → PO cria User Stories de dev
  → orquestrador aciona dev-handoff em nova sessão

PO pede ajustes de conteúdo no brief
  → design-brief atualiza a Task (Cenário B)
  → volta para validação

PO responde questões em aberto
  → design-brief incorpora respostas (Cenário C)
  → se todas resolvidas: PO cria User Stories → dev-handoff
  → se alguma implica redesign: orquestrador reativa visual-design

PO aprova mas o design foi revisado enquanto isso
  → design-brief atualiza o brief existente (Cenário D)
  → Task atualizada, não substituída
```

O `design-brief` gerencia todas as atualizações da Task diretamente — o orquestrador só é acionado quando a situação exige decisão de redesign.

---

## Critérios de saída do workflow

```
□ Discovery realizado (ou dispensa documentada com motivo)
□ Brief completo — todas as seções preenchidas
□ Microcopy exaustivo — todo texto visível documentado
□ Questões em aberto listadas (ou "Nenhuma" explícito)
□ Task criada no Jira, atrelada ao Épico, status "Entregue ao PO"
□ Links do Figma por estado (não só link da página raiz)
□ PO notificado (via Task no Jira)
```

---

## O que este workflow não cobre

- Implementação da tela → use `workflow-implementacao.md` após validação do PO
- Testes com usuários pós-design → use `prototype-testing` fora deste workflow
- Análise de dados da tela após o lançamento → acione `data-analyst` separadamente

# Fluxo Jira — Board AIPRODUCT (18 colunas)

**Board:** [AIPRODUCT — Board 674](https://taya-team-z4401kjx.atlassian.net/jira/software/projects/AIPRODUCT/boards/674)
**Vigente desde:** 2026-08-06
**Substitui:** o fluxo antigo `AIPRODUCT-XX <-> AIDESIGN-XX` de 8 colunas (board AIDESIGN foi descontinuado — ver histórico no [Changelog](../CHANGELOG.md)).

Todo o ciclo de vida de uma demanda — da necessidade do usuário até o monitoramento pós-release — passa por um único board, em 18 colunas divididas em duas fases.

## Fase Discovery (Product Designer + PM)

```
User Needs → Revisão Design → Aguardando Aprovação → Product Review →
To Prototype → Prototype Review → Journey Spec → Grooming → Technical Design
```

## Fase Downstream (PO + Developers + PM)

```
Product Shape → Refinement → Backlog → To Do → Doing → QA → Done → Released → Monitoramento
```

`Technical Design` (fim da Discovery) alimenta `Product Shape` (início da Downstream) — é o ponto onde o PO cria a User Story a partir do Journey Spec aprovado.

## Quem cria o quê (issue types)

| Item | Tipo no Jira | Criado por | Nasce em |
|---|---|---|---|
| Épico | Epic | PM | — (parent, alimenta `User Needs`) |
| Design Brief | Tarefa | Product Designer | `User Needs` |
| Protótipo | Tarefa | Product Designer | `To Prototype` |
| Journey Spec | Tarefa | Product Designer | `Journey Spec` |
| Doc. Arquitetura | Tarefa | Tech Lead | `Technical Design` |
| User Story | novo tipo | PO | `Product Shape` |

## Quem move cada coluna

| Coluna | Quem avalia/move |
|---|---|
| `User Needs` → `Revisão Design` | Product Designer |
| `Revisão Design` → `Aguardando Aprovação` | Product Designer |
| `Aguardando Aprovação` → `Product Review` | Product Designer |
| `Product Review` | PM (aprova/rejeita o Design Brief) |
| `To Prototype` → `Prototype Review` | Product Designer |
| `Prototype Review` → `Journey Spec` | Product Designer |
| `Journey Spec` → `Grooming` | Product Designer |
| `Grooming` → `Technical Design` | Product Designer + Developers |
| `Product Shape` | PO cria a User Story a partir do Journey Spec |
| `Refinement` | Product Designer + Developers |
| `Backlog` → ... → `Released` | Developers (com PO facilitando) |
| `Monitoramento` | PM (revisa impacto vs. KPIs) |

## Regras para os agentes do Pipeline

- Design Brief nasce em `User Needs` e percorre toda a Discovery sob responsabilidade do Product Designer — nenhum agente move issue além de `Product Review` sem aprovação do PM registrada no Jira.
- `journey-spec.md` (gerado pela skill `journey-spec`) deve ser anexado ou linkado à issue de Journey Spec antes de mover para `Grooming`.
- Nunca mover uma issue diretamente de `Doing` para `Done`; deve passar por `QA`.
- Nunca criar ou mover User Story em `Product Shape`/Downstream sem solicitação explícita do PO.
- Ao atualizar descrição/comentário de issue com conteúdo de arquivo `.md`, colar o conteúdo completo (ou um resumo estruturado) — nunca um caminho local.

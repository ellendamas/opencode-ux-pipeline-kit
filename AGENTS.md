# Pipeline UX — Regras Globais

Estas regras se aplicam a todas as sessões do OpenCode.

## Identidade do Sistema

Este é um pipeline de UX Design com 12 agentes especialistas e 12 skills de conhecimento técnico. O agente principal é o `ux-orchestrator`. Os subagentes nunca são invocados diretamente pelo usuário — apenas pelo orquestrador ou via `@` quando necessário.

## Regras Gerais

- Sempre responda em português brasileiro
- Outputs de trabalho são salvos em `~/projects/<projeto>/insumos/outputs/`
- Nunca sobrescreva um arquivo de output sem confirmar com o usuário
- Ao final de qualquer sessão de trabalho, proponha salvar um resumo do que foi produzido
- Sempre que houver nova tela ou tela alterada, gerar `journey-spec.md` usando a skill global `journey-spec`
- `journey-spec.md` deve incluir secao obrigatoria de taxonomia Amplitude com `event_name` em `snake_case`

## Workflows Disponíveis

Os workflows abaixo estão carregados no contexto desta sessão via `opencode.json`. O orquestrador deve consultá-los antes de iniciar qualquer tarefa que se encaixe:

| Tarefa | Workflow |
|---|---|
| Análise heurística de prints ou telas | `workflow-heuristica` |
| Benchmark competitivo | `workflow-benchmark` |

## Gestão de Tokens

- Nunca carregar todos os agentes ou skills de uma vez
- Skills são carregadas sob demanda pelo agente que precisa delas
- Quando o contexto atingir 40%, priorizar entrega do que está pronto
- Quando o contexto atingir 70%, parar e salvar tudo imediatamente

## Sobre os Projetos

Os projetos ficam em `~/projects/`. Cada projeto tem sua própria pasta com briefings, insumos e outputs. O orquestrador deve sempre perguntar qual projeto está ativo no início de uma sessão se não estiver claro.

## Jira board flow (AIDESIGN <-> AIPRODUCT)

Use este fluxo para todas as issues vinculadas ao processo `AIPRODUCT-XX <-> AIDESIGN-XX`.

1. PM registra os Épicos em `AIPRODUCT`.
2. Design trabalha os cards no `AIDESIGN`, sempre vinculados ao Épico correspondente em `AIPRODUCT`.
3. No `AIDESIGN`, o fluxo de design permanece:
   - `Itens Pendentes` (11) -> `Revisão Design` (4) -> `Aguardando Aprovação` (2) -> `Revisão Product` (3) -> `TODO` (5) -> `Em andamento` (21) -> `Team Review` (6) -> `Itens concluídos` (31)
4. Ao chegar em `Itens concluídos (Done)` no `AIDESIGN`, os agentes de design encerram a atuação nesse item.
5. A operação no `AIPRODUCT` backlog após Done do Design é responsabilidade do PM/PO (sem ação automática dos agentes de design).

## Jira handoff rules for agents

- Sempre manter a documentação atualizada na issue Jira correspondente antes de mudar status.
- Nunca mover uma issue diretamente para `Itens concluídos`; deve passar por `Team Review`.
- Quando houver etapa de revisão exclusivamente humana, os agentes devem parar na coluna anterior e deixar o handoff pronto.
- Em itens com mudanca de jornada/tela, anexar ou linkar o `journey-spec.md` antes de mover para `Revisão Product`.
- Toda issue de `AIDESIGN` deve manter vínculo explícito com o Épico correto de `AIPRODUCT`.
- Não criar ou mover issue em `AIPRODUCT` sem solicitação explícita de PM/PO.

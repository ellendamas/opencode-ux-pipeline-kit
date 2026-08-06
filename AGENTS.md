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
- Quando o entregavel for uma spec de tela ou um mapeamento de eventos, usar os templates oficiais em `scenario-testing/insumos/outputs/AIPRODUCT-11/` como fonte de partida

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

## Jira board flow (AIPRODUCT, 18 colunas)

Único board, sem mais split AIDESIGN/AIPRODUCT. Fluxo completo e tabelas de responsabilidade em [docs/FLUXO-JIRA-AIPRODUCT.md](docs/FLUXO-JIRA-AIPRODUCT.md).

- Fase Discovery (Product Designer + PM): `User Needs` -> `Revisão Design` -> `Aguardando Aprovação` -> `Product Review` -> `To Prototype` -> `Prototype Review` -> `Journey Spec` -> `Grooming` -> `Technical Design`
- Fase Downstream (PO + Developers + PM): `Product Shape` -> `Refinement` -> `Backlog` -> `To Do` -> `Doing` -> `QA` -> `Done` -> `Released` -> `Monitoramento`
- `Technical Design` alimenta `Product Shape`: o PO cria a User Story a partir do Journey Spec aprovado.
- Os agentes de design atuam na fase Discovery; a partir de `Product Shape` a operação é responsabilidade de PO/Developers (sem ação automática dos agentes de design).

## Jira handoff rules for agents

- Sempre manter a documentação atualizada na issue Jira correspondente antes de mudar status.
- Ao atualizar descrição/comentário de issue no Jira com conteúdo de arquivo `.md`, colar o conteúdo completo no Jira (ou um resumo estruturado com contexto suficiente) em vez de inserir apenas caminho local.
- Nunca usar caminhos locais (ex.: `/home/...`, `~/...`) como substituto de conteúdo em Jira, pois não são acessíveis para outras pessoas.
- Nunca mover uma issue diretamente de `Doing` para `Done`; deve passar por `QA`.
- Quando houver etapa de revisão exclusivamente humana (ex.: `Product Review` pelo PM), os agentes devem parar na coluna anterior e deixar o handoff pronto.
- Em itens com mudança de jornada/tela, anexar ou linkar o `journey-spec.md` antes de mover a issue de `Journey Spec` para `Grooming`.
- Toda issue deve manter vínculo explícito com o Épico correspondente.
- Não criar ou mover User Story em `Product Shape` sem solicitação explícita do PO.

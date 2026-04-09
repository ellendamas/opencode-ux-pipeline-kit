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

## Jira board flow (AIPT)

Use este fluxo para todas as issues vinculadas ao épico AIPT.

1. `Itens Pendentes` (Backlog, transition `11`)
   - Coluna de entrada para itens que ainda precisam de discovery e atuação do time de design.

2. `Revisão Design` (transition `4`)
   - Quando os agentes de design concluírem uma tarefa, devem:
     - anexar ou linkar toda a documentação na issue Jira correspondente;
     - mover o card de `Itens Pendentes` para `Revisão Design`.

3. `Aguardando Aprovação` (transition `2`)
   - O designer revisor move o card para esta coluna após concluir a revisão de design.

4. `Revisão Product` (transition `3`)
   - Após o contexto de aprovação estar preparado, o time de Product humano faz revisão manual aqui.

5. `TODO` (transition `5`)
   - O time de Product coloca itens aprovados aqui para fila de execução tática por design + agentes de IA.

6. `Em andamento` (Sendo feito, transition `21`)
   - Agentes movem para esta coluna quando a execução tática iniciar (protótipos, artefatos e entregáveis).

7. `Team Review` (transition `6`)
   - Após finalização dos agentes, mover para revisão final humana de Product + Design.

8. `Itens concluídos` (Concluído, transition `31`)
   - Apenas revisores humanos movem para concluído quando tudo estiver revisado e correto.

## Jira handoff rules for agents

- Sempre manter a documentação atualizada na issue Jira correspondente antes de mudar status.
- Nunca mover uma issue diretamente para `Itens concluídos`; deve passar por `Team Review`.
- Quando houver etapa de revisão exclusivamente humana, os agentes devem parar na coluna anterior e deixar o handoff pronto.
- Em itens com mudanca de jornada/tela, anexar ou linkar o `journey-spec.md` antes de mover para `Revisão Product`.

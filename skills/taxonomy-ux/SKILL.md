---
name: taxonomy-ux
description: Terminologia canônica UX (termos padronizados), gates de qualidade para normalização e protocolo de consolidação de outputs de múltiplos agentes. Carregue ao consolidar deliverables de múltiplos agentes.
license: MIT
compatibility: opencode
---

## O que esta skill contém

- Protocolo de normalização (5 passos)
- Terminologia canônica (USE vs NÃO USE)
- Gates de qualidade
- Template de escalação

## Quando carregar esta skill

Carregue quando:
- Consolidar outputs de dois ou mais agentes
- Padronizar terminologia entre diferentes especialidades
- Verificar consistência de specs
- Identificar e resolver conflitos

---

## Protocolo de Normalização

### Passo 1 — Inventário
```
Outputs recebidos: [agente]: [entregável] — [status]
Faltando: [agente] / Incompletos: [agente] — [o que falta]
```

### Passo 2 — Auditoria de Terminologia
```
CONFLITOS ENCONTRADOS
─────────────────────────────
Termo A — [agente-1]: "[termo exato]"
Termo B — [agente-2]: "[termo exato]"
Resolvido para: [termo canônico] | Motivo: [razão]
Atualizar em: [documentos]
```

### Passo 3 — Contradições
```
ID: C-001 | Tópico: [ex: tamanho de toque]
  [agente-1] → "44x44pt" | [agente-2] → "48x48dp"
  Resolução: ambos corretos — iOS: 44x44pt / Android: 48x48dp
  Ação: atualizado na spec unificada

ID: C-002 | Tópico: [label de botão]
  Escalado para orquestrador — Recomendado: [versão preferida]
```

### Passo 4 — Duplicações
```
Tópico: [padrão de erro] — encontrado em [agente-1] E [agente-2]
Mantida: versão do [agente-1] (mais completa)
Removido de: [agente-2] | Referência: "Ver spec content-strategy §3.2"
```

### Passo 5 — Documento Unificado
```
Ordem de montagem:
1. Resumo executivo (do orquestrador)
2. Base de pesquisa (ux-research + data-analyst)
3. Specs de design (visual-design + content-strategy + accessibility)
4. Specs de IA UX (se aplicável)
5. Plano de validação (prototype-testing)
6. Questões em aberto e escalações
7. Glossário canônico
```

## Terminologia Canônica

```
USE              | NÃO USE
─────────────────────────────
"usuário"        | "cliente", "end-user"
"tela"           | "view", "painel" (mobile)
"página"         | "tela" (web)
"toque"          | "clique" (mobile)
"componente"     | "elemento", "widget", "módulo"
"fluxo"          | "jornada", "caminho"
"estado vazio"   | "zero state", "null state"
```

## Gates de Qualidade

```
□ Todos os outputs esperados recebidos
□ Sem conflitos de terminologia não resolvidos
□ Sem contradições de spec não resolvidas
□ Labels de plataforma consistentes (iOS / Android / Web)
□ Status alinhados (rascunho / revisado / aprovado / entregue)
□ Glossário completo
□ Escalações documentadas com responsável
```

## Escalação para Orquestrador

```
Escalar quando: dois agentes têm specs contraditórias sem resolução clara,
ou output obrigatório completamente ausente.

ESCALAÇÃO: [ID]
Conflito: [agente-1 diz X] vs [agente-2 diz Y]
Impacto: [o que quebra se não resolvido]
Recomendação: [resolução sugerida]
```

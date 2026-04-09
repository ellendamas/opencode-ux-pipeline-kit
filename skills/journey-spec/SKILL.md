---
name: journey-spec
description: Especificacao padrao de jornadas e telas para handoff entre Design, PO/PM e Analytics. Define template unico em .md para telas novas e alteradas, incluindo taxonomia de eventos Amplitude, contrato de propriedades e criterios de QA.
license: MIT
compatibility: opencode
---

## O que esta skill contem

- Template canonico de `journey-spec.md` para novas telas e alteracoes de telas
- Blocos obrigatorios para PO/PM agentes e para time de analytics
- Taxonomia de eventos Amplitude com convencao, propriedades e QA
- Checklist final de qualidade para evitar handoff incompleto

## Quando carregar esta skill

Carregue quando:
- Uma nova tela for criada
- Uma tela existente for alterada
- Uma jornada ganhar novo passo, regra, estado ou CTA
- For necessario explicitar impacto em escopo, risco e metricas

Nao carregar quando:
- O pedido for apenas ajuste cosmetico sem impacto de comportamento
- Nao houver mudanca de tela, jornada ou instrumentacao

## Principio

```
Uma tela sem spec de jornada vira interpretacao.
Uma jornada sem eventos vira opiniao.

journey-spec e a fonte unica de verdade para:
1) o que mudou na experiencia
2) por que mudou
3) como medir se funcionou
```

## Convencao Amplitude

```
PADRAO DE NOME DE EVENTO
------------------------
Formato: snake_case
Padrao recomendado: <dominio>_<acao>_<estado>

Exemplos validos:
- simulation_started
- consent_revocation_confirmed
- revocation_error

Evitar:
- CamelCase (ConsentRevocationStarted)
- espaco (consent revocation started)
- nomes genericos (button_clicked)

Propriedades minimas por evento:
- user_id
- session_id
- timestamp
- platform
- flow_name
- step_name
- screen_name

Propriedades de dominio (exemplo consentimento):
- consent_id
- consent_type
- revocation_reason
- compliance_status
```

## Formato obrigatorio do arquivo (.md)

Use sempre esta estrutura:

```markdown
---
agent: [agent-name]
project: [nome-do-projeto]
journey: [nome-da-jornada]
platform: [iOS | Android | Web | Mobile | Cross-platform]
date: [YYYY-MM-DD]
depends_on: [lista de agentes]
status: draft | reviewed | approved
---

# Journey Spec - [Nome da Jornada]

## 1) Resumo executivo da jornada
- Problema que a mudanca resolve
- Resultado esperado para user
- Impacto esperado para negocio

## 2) Escopo e contexto
- Tipo: nova jornada | evolucao de jornada
- Origem: ticket/epico
- Fora de escopo

## 3) Mapa da jornada (passo a passo)
| step_id | objetivo do user | trigger | tela destino | resultado esperado |
|---|---|---|---|---|

## 4) Inventario de telas
| screen_id | nome da tela | plataforma | status (new/changed/removed) | owner |
|---|---|---|---|---|

## 5) Spec por tela

### Tela: [screen_id] - [nome]
**Objetivo da tela**
- [1 frase]

**Componentes principais**
- [component_name] - [funcao]

**Estados obrigatorios**
- default
- loading state
- error message
- empty state (quando aplicavel)
- success (quando aplicavel)

**Regras de negocio**
- Regra 1
- Regra 2

**Microcopy critica**
- CTA primaria
- CTA secundaria
- Mensagens de erro

**Acessibilidade minima**
- contraste AA
- foco visivel (Web)
- alvo de toque minimo (iOS/Android)

## 6) Diff de UX por tela
| screen_id | tipo de mudanca (new/changed/removed) | o que mudou | por que mudou | impacto esperado |
|---|---|---|---|---|

## 7) Taxonomia de eventos Amplitude

### Regras gerais
- Convencao: snake_case
- Cobrir eventos de entrada, acao, sucesso, erro e cancelamento
- Cada evento precisa de trigger explicito

### Tabela de eventos
| event_name | trigger | screen_name | flow_name | step_name | required_properties | optional_properties | owner | qa_status |
|---|---|---|---|---|---|---|---|---|

### Exemplo de payload
```json
{
  "event_name": "consent_revocation_confirmed",
  "user_id": "123",
  "session_id": "abc",
  "timestamp": "2026-04-08T10:00:00Z",
  "platform": "Web",
  "flow_name": "consent_revocation",
  "step_name": "confirmation",
  "screen_name": "consent_confirmation",
  "consent_id": "c-001",
  "consent_type": "credit_check",
  "revocation_reason": "privacy",
  "compliance_status": "valid"
}
```

## 8) Criterios de QA de tracking
- Cobertura de eventos criticos >= 90%
- Conformidade de taxonomia >= 95%
- Completude de propriedades >= 95%
- PII indevida = 0
- Latencia p95 <= 30 min

## 9) Impacto para PO/PM
- Impacto em escopo
- Riscos e dependencias
- Impacto esperado em metricas
- Plano de rollout (quando aplicavel)

## 10) Open questions
| pergunta | owner | prazo | status |
|---|---|---|---|
```

## Regras de escrita para PO/PM agentes

```
- Escrever o "por que" antes do "como"
- Evitar texto vago: usar comportamento observavel
- Evitar "ficou igual ao design" como criterio
- Declarar sempre o impacto esperado em metrica
- Declarar o que esta fora de escopo
```

## Checklist final

- [ ] Frontmatter completo e valido
- [ ] Inventario de telas preenchido (new/changed/removed)
- [ ] Toda tela com estados obrigatorios
- [ ] Diff de UX com motivacao e impacto
- [ ] Tabela de eventos Amplitude completa
- [ ] Propriedades minimas por evento definidas
- [ ] Criterios de QA de tracking preenchidos
- [ ] Open questions com owner e prazo

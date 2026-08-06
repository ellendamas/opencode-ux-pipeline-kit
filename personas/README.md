# Personas

Perfis de público-alvo reutilizáveis por qualquer agente do Kit (pesquisa, copy, content-strategy, ux-writing, etc.) para adaptar tom, linguagem e hipóteses ao perfil descrito.

## Estrutura

```
personas/
└── corban.md      # Persona de correspondente bancário (canal corban)
```

## Personas

Cada persona é um arquivo `.md` com um frontmatter padronizado:

```yaml
---
name: Nome Exibido
tag: slug-unico
version: 1.0
description: Breve descrição do perfil
---
```

### Como adicionar uma nova persona

1. Crie um arquivo `.md` dentro de `personas/`
2. Use o frontmatter com `name`, `tag`, `version` e `description`
3. No corpo do arquivo, descreva o público com:
   - Quem é o público (demografia, contexto)
   - Como pensa e toma decisões
   - Como se comunicar com ele (tom, linguagem, palavras-chave)
   - O que evitar na comunicação
   - Exemplos de comunicação ideal

### Como usar uma persona

Ao acionar um agente (`ux-research`, `ux-writing`, `content-strategy`, etc.), referencie o arquivo de persona relevante para que o agente adapte linguagem, tom e hipóteses ao perfil descrito.

### Origem

`corban.md` foi originalmente criado para um pipeline de agentes de pesquisa (UX Research) mantido por um ex-colaborador. Os agentes desse pipeline (`ux-orchestrator`, `ux-planner`, `ux-screener`, etc.) não foram recuperados — ver nota no [CHANGELOG](../CHANGELOG.md). A persona foi trazida para o Kit por ser reutilizável independentemente desses agentes.

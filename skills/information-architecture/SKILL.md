---
name: information-architecture
description: Frameworks e templates de arquitetura de informação: hierarquia de conteúdo, taxonomia de navegação, card sorting, tree testing, mental models e análise de crescimento de produto. Carregue quando precisar estruturar ou auditar a navegação e organização de informação de um produto digital.
license: MIT
compatibility: opencode
---

## O que esta skill contém

Esta skill fornece frameworks e templates para arquitetura de informação: hierarquia de conteúdo, taxonomia de navegação, card sorting, tree testing, mental models e análise de crescimento de produto.

## Quando carregar esta skill

- Ao estruturar ou auditar navegação de produto
- Ao realizar card sorting ou tree testing
- Ao mapear mental models de usuários
- Ao identificar problemas de arquitetura de informação existente
- Ao planejar crescimento de conteúdo

## Os 8 Princípios de IA (Peter Morville)

1. **Objetos:** conteúdo como entidades com atributos e comportamentos
2. **Escolhas:** oferecer opções limitadas e significativas
3. **Divulgação progressiva:** mostrar o suficiente para decisão, não tudo
4. **Exemplar:** mostrar exemplos do que está dentro de uma categoria
5. **Porta frontal:** qualquer página pode ser a entrada
6. **Múltiplas classificações:** usuários pensam diferente — oferecer mais de um caminho
7. **Navegação focada:** misturar tipos de navegação confunde
8. **Crescimento:** a estrutura deve suportar conteúdo futuro sem quebrar

## Padrões de Navegação

| Padrão | Quando usar | Quando evitar |
|---|---|---|
| Tab bar (mobile) | 3–5 destinos principais, acesso frequente | Mais de 5 destinos |
| Drawer / hamburger | Muitas seções, algumas raramente acessadas | Funcionalidades core |
| Bottom sheet | Ações contextuais sobre o conteúdo atual | Navegação global |
| Breadcrumb | Hierarquia profunda (3+ níveis) | Apps flat com 1–2 níveis |
| Mega menu (web) | Muitas categorias com subcategorias | Produtos simples |
| Tabs horizontais | Conteúdo paralelo, mesmo nível | Mais de 6 tabs |

## Template de Card Sorting

```
CARD SORTING — [Produto]
─────────────────────────
Tipo: aberto / fechado / híbrido
Participantes: [n] | Perfil: [ICP]
Cards: [n itens de conteúdo ou funcionalidades]

Por participante:
  Grupos criados: [lista de agrupamentos]
  Nomes dados aos grupos: [nomes originais]
  Cards que causaram hesitação: [lista]
  Comentários em voz alta: [transcrição relevante]

Análise:
  Agrupamentos mais frequentes: [padrão]
  Itens problemáticos (pouca concordância): [lista]
  Labels emergentes (vocabulário dos usuários): [lista]
  Divergência com estrutura atual: [gaps]
```

## Template de Tree Testing

```
TREE TESTING — [Produto]
─────────────────────────
Árvore testada: [estrutura de navegação em texto]
Tarefas testadas: [lista de tarefas]
Participantes: [n]

Por tarefa:
  Taxa de acerto direto: [%]
  Taxa de acerto após backtrack: [%]
  Taxa de falha: [%]
  Caminhos mais comuns (corretos): [sequência]
  Caminhos mais comuns (incorretos): [sequência]
  Primeiro clique errado mais frequente: [item]

Diagnóstico:
  Nós problemáticos (< 70% acerto): [lista]
  Hipótese de causa: [para cada nó]
  Recomendação: [para cada nó]
```

## Análise de Mental Model

```
MENTAL MODEL — [Jornada]
────────────────────────
Como o usuário pensa que o produto funciona: [modelo mental do usuário]
Como o produto realmente funciona: [modelo de implementação]
Gaps (onde o modelo mental diverge): [lista de divergências]
Impacto de cada gap: [confusão / erro / abandono]
Recomendação: [ajustar o produto ao modelo mental OU educar o usuário]
```

## Auditoria de IA Existente

Para auditar a estrutura de um produto que já existe:

```
AUDITORIA DE IA — [Produto]
────────────────────────────
Estrutura atual: [mapa de navegação em texto]

Por nível:
  Nível 1 (navegação global): [itens] | Problemas: [lista]
  Nível 2 (seções): [itens] | Problemas: [lista]
  Nível 3 (subseções): [itens] | Problemas: [lista]

Problemas identificados:
  Duplicação: [conteúdo no mesmo lugar em dois caminhos]
  Orfãos: [conteúdo sem caminho claro de acesso]
  Nomenclatura ambígua: [itens com nome que confunde]
  Profundidade excessiva: [caminhos com mais de 3 cliques]

Recomendações:
  Estrutura proposta: [novo mapa]
  Justificativa por mudança: [para cada alteração significativa]
```

## Checklist de Qualidade

- [ ] Estrutura suporta crescimento sem reestruturação total?
- [ ] Usuário consegue chegar em qualquer destino em máximo 3 cliques?
- [ ] Labels usam vocabulário do usuário (validado em pesquisa)?
- [ ] Há mais de um caminho para conteúdo acessado frequentemente?
- [ ] Navegação global é consistente em todas as telas?
- [ ] Estados ativos e localização do usuário são sempre visíveis?

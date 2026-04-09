---
name: microcopy-patterns
description: Framework de voz e tom, padrões de microcopy (erros, estados vazios, CTAs, navegação) e checklist de qualidade para content strategy. Carregue ao definir sistema de linguagem do produto.
license: MIT
compatibility: opencode
---

## O que esta skill contém

- Framework de voz e tom (definição e adaptação por contexto)
- Padrões de microcopy: erros, estados vazios, CTAs, navegação
- Checklist de qualidade de conteúdo

## Quando carregar esta skill

Carregue quando:
- Definir como o produto deve "falar" com usuários
- Criar padrões de microcopy para o produto
- Revisar ou criar conteúdo de interface
- Estabelecer tom por contexto (onboarding, erro, sucesso)

---

## Framework de Voz e Tom

### Voz (consistente, nunca muda)
```
Característica 1: [ex: Clara]
  → Dizemos: [exemplo] | Não dizemos: [contra-exemplo]
Característica 2: [ex: Humana]
  → Dizemos: [exemplo] | Não dizemos: [contra-exemplo]
```

### Tom por contexto (adapta)
```
Onboarding:          Acolhedor, encorajador, simples
Sucesso:             Celebrativo, sem exagero
Erro:                Direto, calmo, focado na solução
Estado vazio:        Prestativo, motivador
Loading:             Tranquilizador
Ação destrutiva:     Preciso, cauteloso
```

## Padrões de Microcopy

### Mensagens de erro
```
PADRÃO: [O que deu errado] + [Por quê] + [O que fazer]

❌ "Erro 404" / "Algo deu errado"
✅ "Não conseguimos carregar seus dados. Verifique sua conexão e tente novamente."
✅ "Digite um e-mail válido (exemplo@email.com)"
```

### Estados vazios
```
PADRÃO: [O que está faltando] + [Por que importa] + [Ação para preencher]

❌ "Nenhum dado encontrado"
✅ "Nenhum item salvo ainda
    Salve qualquer coisa que queira revisitar depois.
    [Explorar itens]"
```

### CTAs
```
PADRÃO: Verbo + Objeto específico

❌ "Enviar" / "OK" / "Clique aqui"
✅ "Salvar alterações" / "Criar conta" / "Enviar mensagem"

Ações destrutivas — sempre nomear a consequência:
✅ "Excluir projeto" / "Cancelar assinatura"
```

### Navegação e IA
```
→ Linguagem do usuário, não do produto
→ Máximo 2 palavras por label de navegação
→ Substantivos para destinos, verbos para ações
```

## Checklist de Qualidade

```
□ Linguagem simples (máximo nível 8 de leitura)
□ Voz ativa
□ Sem duplas negativas
□ Terminologia consistente em todo o produto
□ Todas as mensagens de erro têm caminho de resolução
□ Todos os estados vazios têm ação clara
□ CTAs específicos (não "Enviar" ou "OK")
□ Linguagem inclusiva (sem padrão de gênero)
```

---
name: ai-ux-patterns
description: Princípios de IA UX (transparência, controle, degradação graciosa, calibração), padrões por tipo de feature (recomendações, IA generativa, automação), linguagem por nível de confiança e checklist ético. Carregue ao desenhar features com IA/ML.
license: MIT
compatibility: opencode
---

## O que esta skill contém

- Princípios fundamentais de IA UX
- Padrões por tipo de feature (recomendações, IA generativa, automação, onboarding)
- Linguagem por nível de confiança
- Checklist ético

## Quando carregar esta skill

Carregue quando:
- Desenhar features com recomendações algorítmicas
- Trabalhar com IA generativa ou automação
- Definir transparência e controle para produtos com IA
- Criar onboarding para funcionalidades de IA

---

## Princípios Fundamentais

```
1. TRANSPARÊNCIA — usuário sempre sabe que a IA está envolvida,
   quais dados foram usados e qual o nível de confiança

2. CONTROLE — IA sugere, usuário decide (ações de alto impacto)
   Override fácil em qualquer recomendação; opção de desativar

3. DEGRADAÇÃO GRACIOSA — quando a IA falha, fallback para input manual
   Nunca mostrar estado quebrado; comunicar limitações sem jargão

4. CALIBRAÇÃO — não superestimar nem subestimar a IA
   Trazer erros proativamente, não só em falha
```

## Padrões por Tipo de Feature

### Recomendações
```
[Conteúdo da recomendação]
Porque: [razão em linguagem simples]
[Aceitar] [Dispensar] [Por que não? →]

→ Sempre mostrar razão da recomendação
→ Dispensa fácil, sem fricção
→ Coletar feedback para melhorar o modelo
```

### IA Generativa
```
1. Input: prompt claro ou gatilho
2. Loading: "Gerando seu [X]..." com indicador de progresso
3. Output: conteúdo gerado + affordance de edição
4. Ações: [Usar] [Gerar novamente] [Editar] [Descartar]
5. Atribuição: "Gerado por IA — sempre revise antes de usar"

→ Sempre permitir edição; nunca aplicar automaticamente em campos críticos
```

### Automação
```
"[Produto] automaticamente [ação] porque [razão].
 [Ver o que mudou] [Desfazer]"

→ Notificar cada ação automatizada
→ Desfazer disponível por pelo menos 30 segundos
→ Permitir desativar a automação
```

### Onboarding de IA
```
Passo 1: O que faz (benefício, sem jargão)
Passo 2: Quais dados usa (transparência)
Passo 3: Como controlar (autonomia)
Passo 4: Primeiro uso guiado, baixo risco

→ Nunca ativar silenciosamente; obter consentimento para personalização
```

## Linguagem por Nível de Confiança

```
Alta (>85%):    mostrar diretamente — "Achamos que você vai gostar de X"
Média (60-85%): qualificador suave — "Você também pode gostar de X"
Baixa (<60%):   não mostrar, ou como exploração — "Descubra algo novo"
Cold start:     perguntar diretamente — "Nos ajude a aprender suas preferências"
```

## Checklist de Ética

```
□ Envolvimento da IAшло divulgação ao usuário
□ Usuários podem optar por não usar personalização
□ Características protegidas não usadas em recomendações
□ Mecanismo de feedback para decisões erradas da IA
□ Decisões de alto impacto requerem confirmação humana
□ Uso de dados explicado em linguagem simples
□ Testes de viés planejados para outputs de recomendação
```

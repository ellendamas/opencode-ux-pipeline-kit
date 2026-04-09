---
name: design-tokens
description: Sistema de tokens de design (cores, tipografia, espaçamento, elevação), template de especificação de componentes e padrões por plataforma (iOS, Android, Web). Carregue para criar specs visuais ou definir design system.
license: MIT
compatibility: opencode
---

## O que esta skill contém

- Estrutura de tokens: cores (primitivos e semânticos), tipografia, espaçamento, elevação
- Template de especificação de componentes
- Padrões específicos por plataforma (Mobile iOS/Android, Web)

## Quando carregar esta skill

Carregue quando:
- Criar specification de design visual para componentes
- Definir ou auditar design tokens
- Precisar de paleta de cores, escala tipográfica ou sistema de espaçamento
- Trabalhar com design systems mobile ou web

---

## Sistema de Tokens

### Estrutura de Cores
```
Primitivos (valores brutos):
  cor-azul-100: #E3F2FD | cor-azul-500: #2196F3 | cor-azul-900: #0D47A1

Semânticos (baseados em intenção):
  cor-marca-primaria: {cor-azul-500}
  cor-feedback-erro: #D32F2F | sucesso: #388E3C | alerta: #F57C00

Superfície:
  cor-superficie-padrao: #FFFFFF
  cor-superficie-sutil: #F5F5F5

Texto:
  cor-texto-primario: #212121
  cor-texto-secundario: #757575
  cor-texto-desabilitado: #BDBDBD
```

### Tipografia
```
Escala Mobile:
  display-lg: 32sp / negrito    headline: 24sp / seminegrito
  titulo-lg:  20sp / seminegrito  corpo-lg: 16sp / regular
  corpo-md:   14sp / regular    label: 12sp / médio

Escala Web (mesmos nomes, valores em px):
  display-lg: 48px / negrito    headline: 32px / seminegrito
```

### Espaçamento (base 4px)
```
espaco-1: 4px   espaco-2: 8px   espaco-3: 12px  espaco-4: 16px
espaco-6: 24px  espaco-8: 32px  espaco-10: 40px espaco-16: 64px
```

### Elevação
```
elevacao-0: sem sombra
elevacao-1: 0 1px 2px rgba(0,0,0,0.08)   — card em repouso
elevacao-2: 0 2px 8px rgba(0,0,0,0.12)   — card hover
elevacao-3: 0 4px 16px rgba(0,0,0,0.16)  — dropdown
elevacao-4: 0 8px 24px rgba(0,0,0,0.20)  — modal
```

## Template de Especificação de Componente

```
COMPONENTE: [Nome]
─────────────────────────────
Propósito: [o que faz e quando usar]
Plataforma: [Mobile / Web / Ambos]

Anatomia:
  → [Elemento 1]: [tokens de referência]
  → [Elemento 2]: [tokens de referência]

Estados: Padrão | Hover (web) | Pressionado | Foco | Desabilitado | Erro | Loading

Tamanhos: Grande | Médio | Pequeno — [dimensões + padding por tamanho]

Área mínima de toque: 44x44pt (iOS) / 48x48dp (Android) / 32x32px (web)

Acessibilidade:
  Contraste: [AA ou AAA]
  Indicador de foco: [spec]
  Label para leitor de tela: [orientação]

✅ Faça: [uso correto]
❌ Não faça: [uso incorreto]
```

## Padrões por Plataforma

```
Mobile:
→ Área segura inferior: respeitar home indicator
→ Padrões de navegação: Tab bar (iOS) / Bottom nav (Android)
→ Tipografia: Dynamic Type (iOS) / Scalable Pixels (Android)

Web:
→ Breakpoints: 320 / 768 / 1024 / 1280 / 1440px
→ Estados hover: obrigatórios para todos os elementos interativos
→ Estados de foco: anel de foco visível em todos os interativos
```

---
name: wcag-checklist
description: Referência WCAG 2.1 com checklists por princípio, templates de especificação para componentes (botão, campo, modal) e verificações específicas para iOS e Android. Carregue para auditorias de acessibilidade ou especificações de componentes.
license: MIT
compatibility: opencode
---

## O que esta skill contém

- Referência rápida WCAG 2.1 por princípio (Perceptível, Operável, Compreensível, Robusto)
- Templates de especificação para componentes: botão, campo de formulário, modal
- Checklists de verificação para iOS e Android
- Template de auditoria

## Quando carregar esta skill

Carregue quando:
- Solicitar auditoria de acessibilidade ou "revisão WCAG"
- Precisar de especificação de acessibilidade para componentes
- Estabelecer padrões de acessibilidade para a plataforma mobile (iOS/Android)
- Trabalhar com leitores de tela, navegação por teclado, ou contraste de cores

---

## Referência Rápida WCAG 2.1

### Perceptível
```
1.1 Texto alternativo: imagens têm alt descritivo; decorativas têm alt=""
1.4 Contraste: texto ≥ 4.5:1 (AA) / 7:1 (AAA); componentes UI ≥ 3:1
    Texto pode ser redimensionado em 200% sem perda
```

### Operável
```
2.1 Teclado: toda funcionalidade via teclado; sem armadilhas
2.4 Navegação: indicador de foco visível; ordem de foco lógica
2.5 Touch: áreas de toque ≥ 44x44pt (mobile) / 32x32px (web)
```

### Compreensível
```
3.2 Consistência: navegação e componentes consistentes entre telas
3.3 Erros: identificados em texto; labels para todos os inputs
```

### Robusto
```
4.1 Compatível: HTML válido; todos os componentes com nome, papel e valor
```

## Templates de Spec por Componente

### Botão
```
Papel: button nativo ou role="button"
Label: texto descritivo — apenas ícone: aria-label="[ação] [objeto]"
Estados:
  Desabilitado: aria-disabled="true" (manter focável)
  Loading:      aria-busy="true" + aria-label="Carregando..."
Foco: anel visível — contraste mínimo 3:1 vs fundo
Área de toque: mínimo 44x44pt / 48x48dp
```

### Campo de formulário
```
Label: sempre visível — placeholder é apenas dica complementar
Erro:  aria-invalid="true" + aria-describedby → mensagem de erro em texto
Obrigatório: aria-required="true" + indicador visual + "(obrigatório)"
```

### Modal
```
Papel: role="dialog" com aria-labelledby → título
Foco: ao abrir → primeiro elemento focável; preso dentro do modal
      ao fechar → retorna ao elemento que disparou
Fechar: Escape sempre fecha; botão fechar com aria-label="Fechar diálogo"
```

## Mobile

### iOS
```
□ Ordem do VoiceOver corresponde à ordem visual
□ Labels de acessibilidade em todos os elementos interativos
□ Dynamic Type suportado (todo texto escala)
□ Reduce Motion respeitado para animações
```

### Android
```
□ Ordem do TalkBack corresponde à ordem visual
□ Content descriptions em todos os elementos interativos
□ Opção de texto grande suportada
```

## Template de Auditoria

```
AUDITORIA: [Componente ou Fluxo] — WCAG 2.1 AA
─────────────────────────────
PASSOU ✅ | [critério] — [notas]
FALHOU ❌ | [critério] — [problema] — [recomendação]
ATENÇÃO ⚠️ | [critério] — [problema potencial]

Críticos (antes do lançamento):
Maiores (próximo sprint):
Menores (backlog):
```

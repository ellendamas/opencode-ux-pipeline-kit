---
name: copy-patterns
description: Padrões de copy por elemento de interface (títulos, botões, labels, erros, estados vazios, notificações, tooltips) e flags de revisão. Carregue ao escrever ou revisar textos reais da interface.
license: MIT
compatibility: opencode
---

## O que esta skill contém

- Os 4 critérios de todo texto (claro, útil, conciso, consistente)
- Padrões de copy por elemento: títulos, botões, labels, erros, sucessos, estados vazios, notificações, tooltips
- Flags de revisão (crítico, importante, melhoria)

## Quando carregar esta skill

Carregue quando:
- Escrever textos reais de interface
- Revisar microcopy existente
- Criar textos para botões, títulos, mensagens de erro
- Trabalhar com notificações push ou tooltips

---

## Os 4 Critérios de Todo Texto

```
1. CLARO     → o usuário entende sem esforço?
2. ÚTIL      → ajuda o usuário a agir?
3. CONCISO   → usa o mínimo de palavras necessário?
4. CONSISTENTE → usa os mesmos termos do restante do produto?
```

## Copy por Elemento

### Títulos de tela
```
Padrão: substantivo simples, máximo 3 palavras, sem verbo
✅ "Extrato" / "Configurações" / "Nova transferência"
❌ "Visualizar extrato de movimentações"
```

### Botões e CTAs
```
Padrão: verbo no infinitivo + objeto específico
✅ "Confirmar transferência" / "Criar conta" / "Enviar código"
❌ "OK" / "Clique aqui" / "Confirmar" (genérico)

Destrutivos: nomear a consequência
✅ "Cancelar assinatura" / "Excluir conta permanentemente"

Loading: trocar o texto durante o processamento
✅ Antes: "Confirmar pagamento" → Durante: "Processando..." → Após: "Pagamento confirmado"
```

### Labels de formulário
```
Padrão: substantivo simples — sem "Digite seu..." ou "Insira seu..."
✅ "E-mail" / "CPF" / "Data de nascimento"
❌ "Digite seu e-mail" / "Informe o CPF"

Hint (abaixo do campo): "exemplo@email.com" / "Apenas números"
```

### Mensagens de erro
```
Padrão: [O que aconteceu] + [Como resolver]
✅ "E-mail inválido — use o formato exemplo@email.com"
✅ "Não conseguimos processar o pagamento.
    Verifique os dados do cartão e tente novamente."
❌ "Erro 500" / "Request failed" / "Algo deu errado" (sem ação)
```

### Mensagens de sucesso
```
✅ "Transferência enviada"
✅ "Código enviado para seu e-mail"
✅ Com próximo passo: "Conta criada! Acesse seu e-mail para confirmar."
❌ Exageros: "Incrível! Sua transferência foi um sucesso maravilhoso!"
```

### Estados vazios
```
Padrão: [Título: o que está vazio] + [Descrição: por que / o que fazer] + [CTA]
✅ "Nenhuma transação ainda
    Suas movimentações aparecerão aqui após a primeira transação.
    [Fazer primeira transferência]"
❌ "Nenhum dado encontrado" (sem contexto ou ação)
```

### Notificações push
```
Padrão: [Gatilho] + [Benefício] + [Urgência se houver]
✅ "Seu pagamento foi aprovado. R$ 150,00 disponíveis."
✅ "Oferta expira em 2h: 20% de desconto em seguros"
Máximo 2 linhas; primeira linha = o mais importante
```

### Tooltips e ajuda
```
Responde "o que é isso?" em máximo 2 frases simples
✅ "CVV — os 3 números no verso do cartão"
✅ "Usamos seu CEP só para calcular o frete"
Nunca repetir o label do campo
```

## Flags de Revisão

```
🔴 CRÍTICO: texto técnico exposto / erro sem resolução / CTA ambíguo em ação destrutiva
🟡 IMPORTANTE: inconsistência de terminologia / voz passiva / texto longo demais
🟢 MELHORIA: tom levemente fora do contexto / oportunidade de ser mais conciso
```

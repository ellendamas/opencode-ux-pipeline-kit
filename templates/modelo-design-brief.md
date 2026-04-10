# Design Brief — Tela de Cadastro de Parceiro

**Tipo de tarefa:** Design  
**Épico pai:** `AIPRODUCT-42 — Onboarding de Parceiros Contábeis — Validação de Problema`  
**Responsável:** [Designer]  
**Status:** Entregue ao PO  
**Data de entrega:** 2026-04-09

---

## Link da tela

| Artefato | Link |
|----------|------|
| Protótipo navegável | [Figma — fluxo completo](https://figma.com/...) |
| Tela — estado default | [Figma — frame/cadastro-default](https://figma.com/...) |
| Tela — estado de erro | [Figma — frame/cadastro-erro](https://figma.com/...) |
| Tela — estado de carregamento | [Figma — frame/cadastro-loading](https://figma.com/...) |
| Especificações de componentes | [Figma — frame/cadastro-specs](https://figma.com/...) |

---

## O que esta tela faz

Permite que um escritório de contabilidade crie sua conta de parceiro na TAYA. É o ponto de entrada do fluxo — o contador chega aqui pelo CTA da landing page.

---

## Comportamentos de UX

### Estado default
- Formulário com 4 campos: Nome do escritório, CNPJ, E-mail do responsável, Telefone
- Nenhum campo em estado de erro ao carregar
- Botão "Criar conta" desabilitado até todos os campos estarem preenchidos

### Estado de carregamento
- Ao submeter, o botão "Criar conta" entra em estado de loading (spinner inline)
- Campos ficam desabilitados durante o carregamento
- Sem redirect ainda — aguarda resposta da API

### Estado de erro — CNPJ inválido
- Mensagem de erro inline abaixo do campo CNPJ: _"CNPJ inválido. Verifique e tente novamente."_
- Ícone de alerta à esquerda da mensagem
- Borda do campo muda para vermelho `#D92D20`
- Os outros campos permanecem preenchidos — não limpar o formulário

### Estado de erro — e-mail já cadastrado
- Banner no topo do formulário (não inline): _"Este e-mail já possui uma conta."_
- Link "Fazer login →" dentro do banner
- Formulário permanece preenchido

### Estado de erro — falha genérica de servidor
- Banner no topo: _"Algo deu errado. Tente novamente em instantes."_
- Botão volta para estado ativo para permitir nova tentativa

### Estado de sucesso
- Não há feedback de sucesso nesta tela
- Redirect imediato para a tela de confirmação de e-mail (`AIDESIGN-42-DB-02`)

---

## Microcopy

| Elemento | Texto |
|----------|-------|
| Título da página | "Crie sua conta de parceiro" |
| Subtítulo | "Leva menos de 3 minutos." |
| Label — campo 1 | "Nome do escritório" |
| Label — campo 2 | "CNPJ" |
| Label — campo 3 | "E-mail do responsável" |
| Label — campo 4 | "Telefone" |
| CTA principal | "Criar conta" |
| Link secundário | "Já tenho conta. [Fazer login →]" |
| Erro — CNPJ inválido | "CNPJ inválido. Verifique e tente novamente." |
| Erro — e-mail duplicado | "Este e-mail já possui uma conta. [Fazer login →]" |
| Erro — servidor | "Algo deu errado. Tente novamente em instantes." |

---

## Especificações de componentes

### Campos de formulário
- Label sempre acima do campo, nunca substituída por placeholder
- Altura do campo: 44px
- Padding interno: 10px 14px
- Estado focused: borda `#7F56D9` (cor primária TAYA)
- Estado error: borda `#D92D20`, mensagem abaixo em `#D92D20`, ícone `alert-circle`
- Estado disabled: fundo `#F9FAFB`, texto `#98A2B3`

### Botão primário
- Altura: 48px, padding horizontal: 24px
- Estado disabled: fundo `#E9D7FE`, texto `#B692F6` — não usar opacity
- Estado loading: spinner de 20px no lugar do texto, fundo mantém cor ativa

### Banner de erro
- Fundo `#FEF3F2`, borda esquerda 4px `#D92D20`
- Ícone `alert-circle` em `#D92D20` à esquerda
- Texto em `#7A271A`

---

## Decisões e justificativas

| Decisão | Motivo |
|---------|--------|
| Apenas 4 campos | Reduzir abandono. CNPJ já valida a empresa — razão social não precisa ser campo manual. |
| Sem senha no cadastro | Senha é criada no primeiro login via link do e-mail de confirmação. Menos fricção na entrada. |
| Erro de e-mail duplicado como banner, não inline | O e-mail pode ter sido preenchido corretamente — o problema é de estado da conta, não do valor digitado. |
| Botão disabled até formulário completo | Evita submissões com campos vazios e erros desnecessários. |

---

## Questões em aberto para o PO

1. O CNPJ será validado via API (Receita Federal) ou apenas validação de formato (máscara + dígito verificador)? Isso afeta a mensagem de erro e o comportamento de carregamento.
2. Existe bloqueio de cadastro por CNPJ já cadastrado? Se sim, precisa de estado de erro específico para isso.

---

## O que não está coberto neste Design Brief

- Fluxo pós-cadastro (tela de confirmação de e-mail) → coberto em `AIDESIGN-42-DB-02`
- Fluxo de login → coberto em `AIDESIGN-42-DB-05`
- Validação de telefone → comportamento padrão do DS, sem especificação adicional

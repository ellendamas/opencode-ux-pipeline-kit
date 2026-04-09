---
name: social-intelligence
description: >
  Use SEMPRE que um agente precisar analisar presença em redes sociais: conteúdo
  orgânico publicado, narrativa de marca, frequência de posts, estratégia de
  influenciadores, engajamento estimado e voz do cliente nas redes. Ativa
  principalmente para social-analyst, mas também para content-strategy quando
  o contexto for análise de comunicação de concorrentes.
---

# Social Intelligence Skill

Frameworks e templates para análise de presença e estratégia de conteúdo em redes sociais a partir de fontes públicas.

---

## Framework 1 — Inventário de Canais

```
INVENTÁRIO DE CANAIS SOCIAIS
─────────────────────────────────────────────
Empresa: [nome]
Data: [data]

INSTAGRAM
  Handle: @[x]
  Seguidores: [n]
  Posts publicados: [n]
  Bio: "[texto]"
  Link na bio: [url ou Linktree]
  CTA na bio: [o que pedem]

TIKTOK
  Handle: @[x]
  Seguidores: [n] (ou: não encontrado)
  Vídeos: [n]

YOUTUBE
  Canal: [nome]
  Inscritos: [n] (ou: não encontrado)
  Tipo de conteúdo: [institucional / produto / depoimentos / educativo]

FACEBOOK
  Página: [nome]
  Seguidores: [n]
  Nota: acesso a posts requer login — dados limitados

LINKEDIN
  Perfil: [nome]
  Seguidores: [n] (ou: não encontrado)
```

---

## Framework 2 — Taxonomia de Conteúdo

Use para classificar cada post analisado:

```
TAXONOMIA PADRÃO:
─────────────────────────────────────────────
OF  Oferta direta         → CTA explícito de produto/serviço
PS  Prova social          → depoimento, case, resultado de cliente real
ED  Educativo             → explica produto, processo, como funciona, dicas
IN  Institucional         → cultura da empresa, equipe, bastidores, valores
GP  Garoto-propaganda     → post com porta-voz ou influenciador contratado
SZ  Sazonal               → data comemorativa, evento, tendência do momento
RV  Reels/vídeo curto     → formato vídeo, independente do tema
IN  Interativo            → enquete, pergunta, desafio, call para comentar
```

### Mix de conteúdo esperado por tipo de empresa

```
REFERÊNCIA DE MERCADO (setor financeiro/crédito):
  Oferta direta:      30-40% — manter CTA claro sem ser agressivo
  Prova social:       20-25% — construir confiança com casos reais
  Educativo:          15-20% — gerar valor e autoridade
  Institucional:      10-15% — humanizar a marca
  Garoto-propaganda:   5-10% — recall e alcance ampliado
  Sazonal/interativo:  5-10% — manter relevância e engajamento

SINAL DE ALERTA:
  >60% oferta direta → marca percebida como spam, baixo engajamento orgânico
  <10% prova social  → difícil construir confiança com ICP avesso a risco
```

---

## Framework 3 — Análise de Copy de Post

Para cada post analisado:

```
ANÁLISE DE POST
─────────────────────────────────────────────
Plataforma: [Instagram / TikTok / Facebook]
Tipo: [Feed / Story / Reels]
Categoria: [taxonomia — OF/PS/ED/IN/GP/SZ/RV]
Data: [se disponível]

Copy extraído:
  Headline/primeira linha: "[texto]"
  Body: "[texto]"
  CTA: "[texto do botão ou call]"
  Hashtags: [lista]

Visual:
  Tipo: [foto / vídeo / carrossel / arte]
  Quem aparece: [produto / pessoa / nenhum]
  Cores predominantes: [observação]

Engajamento (se visível):
  Curtidas: [n]
  Comentários: [n]
  Visualizações: [n — se Reels]

Observação estratégica:
  [Por que este post funciona ou não? O que revela sobre a estratégia?]
```

---

## Framework 4 — Análise de Garoto-Propaganda

```
ANÁLISE DE PARCERIA COM INFLUENCIADOR
─────────────────────────────────────────────
Nome: [influenciador]
Plataformas principais: [Instagram / YouTube / TikTok / TV]
Seguidores: [n por plataforma]
Perfil de audiência: [faixa etária estimada / interesse / classe]

Fit com o ICP da empresa:
  ICP da empresa:       [descrição]
  Audiência do influenciador: [descrição]
  Alinhamento:          [alto / médio / baixo] — [justificativa]

Tipo de contrato inferido:
  Posts por mês: [estimativa]
  Formatos: [feed / stories / reels / YouTube / TV / presença em evento]
  Investimento estimado: [se disponível / referência de mercado]

Onde aparece nos anúncios:
  Aparece em mídia paga: [sim / não / não confirmado]
  Formatos de anúncio com influenciador: [lista]

Análise estratégica:
  Qual função cumpre? [recall / confiança / alcance / conversão]
  Para qual perfil de cliente é mais efetivo?
  Existe risco de imagem associado?
```

---

## Framework 5 — Análise de Narrativa de Marca

```
NARRATIVA DE MARCA NAS REDES
─────────────────────────────────────────────
Empresa: [nome]

HERÓI DA HISTÓRIA:
  □ O cliente        ("você que merece crédito")
  □ O produto        ("o crédito mais rápido do Brasil")
  □ A empresa        ("17 anos sendo os melhores")
  □ O fundador       ("começamos do zero")
  → Identificado: [qual]

PROBLEMA QUE A MARCA RESOLVE NA NARRATIVA:
  [em uma frase — o que a marca diz que resolve]

PROMESSA CENTRAL REPETIDA:
  [a frase ou conceito que aparece em múltiplos posts]

TOM PREDOMINANTE:
  □ Aspiracional    ("realize seus sonhos")
  □ Instrucional    ("veja como funciona")
  □ Emocional       ("família, conquista, segurança")
  □ Urgência        ("só até hoje", "vagas limitadas")
  □ Autoridade      ("líderes do mercado", "maior do Brasil")
  → Identificado: [qual — pode ser múltiplos]

COMO A CONFIANÇA É CONSTRUÍDA:
  □ Dados numéricos (anos, clientes, volume)
  □ Depoimentos com nome real
  □ Garoto-propaganda conhecido
  □ Parceiros/bancos reconhecidos
  □ Selos e certificações
  □ Nota em plataformas de reputação
  → Mecanismos identificados: [lista]

ANÁLISE DA EFETIVIDADE DA NARRATIVA:
  [Por que essa narrativa funciona para o ICP específico desta empresa?]
  [O que ela diz que nenhum concorrente está dizendo?]
```

---

## Protocolo Social Blade (dados públicos de crescimento)

```
URL padrão: https://www.socialblade.com/instagram/user/[handle]

DADOS DISPONÍVEIS PUBLICAMENTE:
  - Total de seguidores
  - Total de posts
  - Média de curtidas por post (estimada)
  - Média de comentários por post (estimada)
  - Taxa de engajamento estimada
  - Crescimento de seguidores (últimos 30 dias)
  - Classificação de conta (A++ a F)

COMO USAR:
bash: curl -s "https://www.socialblade.com/instagram/user/[handle]" | grep -i "followers\|engagement\|grade"

INTERPRETAÇÃO DE TAXA DE ENGAJAMENTO (Instagram):
  > 6%    = excelente (conta pequena/nicho)
  3-6%    = bom
  1-3%    = médio (esperado para contas grandes)
  < 1%    = baixo (comum para contas acima de 100k)
  
  Contas acima de 200k com taxa < 0,5% podem ter audiência inflada.
```

---
name: paid-ads-analyst
description: >
  Use SEMPRE que um agente precisar analisar mídia paga de concorrentes:
  anúncios ativos no Google Ads (via Google Ads Transparency Center), anúncios
  no Facebook e Instagram (via Meta Ad Library), copy de anúncios, landing pages
  de destino, estratégia criativa e posicionamento competitivo em tráfego pago.
  Ativa principalmente para paid-ads-analyst, mas também como skill de suporte
  para market-intelligence quando mídia paga for uma das dimensões analisadas.
---

# Paid Ads Analyst Skill

Frameworks, protocolos e templates para análise de mídia paga competitiva a partir de fontes públicas.

---

## Framework 1 — Mapa de Presença em Mídia Paga

```
MAPA DE PRESENÇA EM MÍDIA PAGA
─────────────────────────────────────────────
Empresa: [nome]
Data: [data]

GOOGLE ADS
  Anúncios ativos encontrados: [sim / não / [n] encontrados]
  Palavras-chave implícitas: [lista]
  URL Transparency Center: [url]

META ADS (Facebook/Instagram)
  Anúncios ativos encontrados: [sim / não / [n] encontrados]
  Formatos em uso: [imagem / vídeo / carrossel / story / reels]
  URL Ad Library: https://www.facebook.com/ads/library/?q=[empresa]&country=BR

ESTIMATIVA DE INVESTIMENTO:
  Nível inferido: [baixo / médio / alto / muito alto]
  Base da inferência: [n de anúncios ativos / frequência / formatos]
```

---

## Framework 2 — Análise de Anúncio Individual

Use para cada anúncio encontrado (Google ou Meta):

```
FICHA DE ANÚNCIO
─────────────────────────────────────────────
ID / Referência: [n ou descrição]
Plataforma: [Google Search / Google Display / Facebook Feed / Instagram Feed / Stories / Reels]
Data identificada: [data de veiculação se disponível]

COPY:
  Headline 1:   "[texto]"
  Headline 2:   "[texto]"
  Headline 3:   "[texto]" (Google) / Body: "[texto]" (Meta)
  Descrição:    "[texto]"
  CTA:          "[botão — Saiba Mais / Simular / Enviar Mensagem / Ligar]"
  URL exibida:  [domínio/caminho]
  URL de destino: [url completa se disponível]

VISUAL (Meta):
  Formato:      [imagem estática / vídeo / carrossel]
  Quem aparece: [produto / pessoa anônima / garoto-propaganda / equipe]
  Oferta visual: [o que o elemento visual comunica]
  Cores:        [observação se relevante para marca]

ANÁLISE:
  Gancho principal:   [qual promessa ou problema endereça]
  ICP implícito:      [a quem parece direcionado]
  Etapa do funil:     [topo — awareness / meio — consideração / fundo — conversão]
  Objeção antecipada: [qual barreira o anúncio tenta superar]
  Prova usada:        [dado / depoimento / autoridade / nenhuma]
  Urgência:           [sim — qual / não]

LANDING PAGE DE DESTINO:
  URL: [url]
  Promessa cumprida: [o anúncio e a landing page estão alinhados? sim / não / parcialmente]
  CTA na landing:    [formulário / WhatsApp / simulador / outro]
  Observação:        [o que chama atenção na landing]
```

---

## Framework 3 — Análise de Copy por Setor

### Padrões de copy eficazes para crédito/fintech (referência)

```
GANCHOS QUE FUNCIONAM NO SETOR DE CRÉDITO:
  Velocidade:   "dinheiro na conta em X horas/minutos"
  Facilidade:   "sem burocracia", "100% online", "sem sair de casa"
  Aprovação:    "aprovação na hora", "sem consulta ao SPC/Serasa"
  Confiança:    "[n] anos no mercado", "[n] clientes atendidos", "nota [x] no RA"
  Exclusividade: "exclusivo para [CLT / aposentados / servidores]"
  Urgência:     "condições especiais até [data]", "vagas limitadas"
  Problema:     "precisa de dinheiro?", "conta está no vermelho?"

GANCHOS QUE SINALIZAM POSICIONAMENTO PREMIUM:
  Transparência: "zero letras miúdas", "contrato claro"
  Humanização:   "consultor dedicado para você"
  Tecnologia:    "processo 100% digital e seguro"
```

---

## Framework 4 — Análise Competitiva de Palavras-chave

```
ANÁLISE DE PALAVRAS-CHAVE EM GOOGLE ADS
─────────────────────────────────────────────
METODOLOGIA:
  Para cada palavra-chave do setor testada:
  1. Registrar quem aparece em anúncios pagos
  2. Registrar posição (1º, 2º, 3º anúncio)
  3. Registrar headline do anúncio
  4. Registrar se a empresa analisada aparece

PALAVRAS-CHAVE TESTADAS:
  "[kw 1]":  [quem aparece] — [empresa analisada: posição x / não aparece]
  "[kw 2]":  [quem aparece] — [empresa analisada: posição x / não aparece]
  "[kw 3]":  [quem aparece] — [empresa analisada: posição x / não aparece]

OPORTUNIDADES IDENTIFICADAS:
  Palavras sem cobertura da empresa:  [lista]
  Palavras com baixa concorrência:    [lista]
  Palavras onde concorrente domina:   [lista]
```

---

## Framework 5 — Maturidade Estratégica em Mídia Paga

Avaliar a sofisticação da estratégia de mídia paga:

```
AVALIAÇÃO DE MATURIDADE
─────────────────────────────────────────────
BÁSICO (empresa iniciante em mídia paga):
  □ Poucos anúncios ativos (1-3)
  □ Copy genérico sem segmentação clara
  □ Destino = página inicial do site
  □ Sem variações de anúncio (sem teste A/B visível)

ESTRUTURADO (empresa com operação de mídia):
  □ Múltiplos anúncios por produto
  □ Copy diferenciado por etapa do funil
  □ Landing pages específicas por produto/campanha
  □ Variações de headline/copy visíveis (teste)
  □ Usa garoto-propaganda em parte dos criativos

AVANÇADO (operação madura):
  □ Anúncios de remarketing identificáveis
  □ Anúncios de brand (própria marca como kw)
  □ Segmentação geográfica evidente
  □ Sazonalidade estratégica (13º, férias, etc.)
  □ Mix de formatos (search + display + vídeo)
  □ Criativos otimizados para mobile

NÍVEL AVALIADO: [Básico / Estruturado / Avançado]
EVIDÊNCIAS: [lista do que foi observado]
```

---

## URLs e Fontes Públicas

```
FONTES PÚBLICAS ACESSÍVEIS:

Google Ads Transparency Center:
  https://adstransparency.google.com/advertiser?region=BR&query=[empresa]

Meta Ad Library:
  https://www.facebook.com/ads/library/?q=[empresa]&country=BR&active_status=all&ad_type=all

Para acessar via bash:
  curl -L "https://adstransparency.google.com/advertiser?region=BR&query=[empresa]"

LIMITAÇÕES CONHECIDAS:
  - Meta Ad Library: renderizada em JS — web_fetch captura HTML inicial sem anúncios dinâmicos
  - Solução: usar web_search com site:facebook.com/ads/library para anúncios indexados
  - Google Transparency: acessível via web_fetch com dados básicos
  - Ambas as plataformas: não mostram volume de gasto nem impressões
```

---

## Protocolo para Screenshots de Anúncios (coleta manual)

Quando prints de anúncios forem fornecidos via Paper MCP ou `/insumos/`:

```
PROTOCOLO DE ANÁLISE DE SCREENSHOT:
1. Identificar plataforma pelo layout visual
2. Extrair todo o texto visível (headline, body, CTA, rodapé, fine print)
3. Descrever o elemento visual principal
4. Registrar se há indicação de anúncio patrocinado
5. Anotar URL visível de destino (se aparecer no anúncio)
6. Classificar etapa do funil e ICP implícito
7. Registrar qualquer dado de engajamento visível (se aparecer no screenshot)
```

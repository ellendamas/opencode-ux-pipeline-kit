---
name: competitive-intelligence
description: >
  Use SEMPRE que um agente precisar executar varredura de inteligência competitiva:
  presença digital, reputação pública, cobertura de mídia, canais de aquisição e
  estratégia de distribuição de concorrentes. Ativa para market-intelligence e
  como skill de suporte para ux-research e product-strategy quando o contexto
  for análise de mercado.
---

# Competitive Intelligence Skill

Frameworks, protocolos e templates para varredura de inteligência competitiva a partir de fontes públicas.

---

## Framework 1 — Mapa de Presença Digital

Use para construir o inventário inicial de qualquer empresa:

```
MAPA DE PRESENÇA DIGITAL
─────────────────────────────────────────────
Empresa: [nome]
Data da varredura: [data]

SITE PRINCIPAL
  URL: [url]
  CTA principal: [o que pedem que o visitante faça]
  Proposta de valor: [headline principal]
  Canal de entrada: [formulário / WhatsApp / app / telefone]
  Simulador embutido: [sim / não]
  Depoimentos: [sim / não / com nome de atendente]
  Parceiros/bancos listados: [lista]

LANDING PAGES DE PRODUTO
  [produto 1]: [url] — CTA: [x] — proposta: [y]
  [produto 2]: [url] — CTA: [x] — proposta: [y]

REDES SOCIAIS
  Instagram: @[handle] — [n] seguidores — [bio]
  TikTok:    @[handle] — [n] seguidores (ou: não encontrado)
  YouTube:   [canal]   — [n] inscritos (ou: não encontrado)
  Facebook:  [página]  — [n] seguidores (ou: requer login)
  LinkedIn:  [perfil]  — [n] seguidores (ou: não encontrado)

REPUTAÇÃO PÚBLICA
  Reclame Aqui: nota [x] — [reputação] — tempo de resposta [y]h — resolução [z]%
  Google Reviews: nota [x] — [n] avaliações
  App Store: nota [x] (ou: sem app)
  Play Store: nota [x] (ou: sem app)
```

---

## Framework 2 — Análise de Reputação Pública

### Protocolo de busca indireta para Reclame Aqui

O Reclame Aqui bloqueia acesso direto (403). Use:

```
BUSCA INDIRETA:
1. web_search: site:reclameaqui.com.br "[empresa]" → reclamações individuais indexadas
2. web_search: "[empresa]" reclame aqui nota tempo resposta resolução → dados agregados
3. web_search: "[empresa]" reclame aqui reclamação mais comum → temas frequentes
4. web_fetch de cada reclamação individual encontrada no resultado 1

PARA CADA RECLAMAÇÃO LIDA:
├── Tema: [categoria do problema]
├── Contexto: [o que aconteceu, em resumo]
├── Resposta da empresa: [como responderam]
├── Linguagem da resposta: [formal/informal/técnico/empático]
├── Resolveu? [sim / não / parcialmente]
└── Tempo de resposta: [se mencionado]
```

### Matriz de análise de reputação

```
ANÁLISE DE REPUTAÇÃO
─────────────────────────────────────────────
Nota geral Reclame Aqui: [x/10]
Classificação: [Ótimo / Bom / Regular / Ruim / Péssimo]
Taxa de resposta: [%]
Taxa de resolução: [%]
Tempo médio de resposta: [horas]

Top 3 categorias de reclamação:
  1. [categoria] — [% estimado ou frequência]
  2. [categoria] — [% estimado ou frequência]
  3. [categoria] — [% estimado ou frequência]

Padrão de resposta identificado:
  Tom: [formal / informal / empático / defensivo / técnico]
  Usa nome do cliente: [sim / não]
  Cita política interna: [sim / não]
  Oferece solução concreta: [sim / não / às vezes]

O que a reputação revela sobre a operação:
  [análise estratégica — o que esses dados dizem sobre como a empresa funciona]

Como a empresa usa a reputação como ativo:
  [está transformando isso em prova social? Como?]
```

---

## Framework 3 — Análise de Cobertura de Mídia

```
ANÁLISE DE MÍDIA E PR
─────────────────────────────────────────────
Empresa: [nome]

VEÍCULOS QUE COBRIRAM:
  Financeiros: [Valor Econômico / InfoMoney / Seu Dinheiro / outros]
  Regionais: [portais locais identificados]
  Gerais: [G1 / UOL / outros]
  Especializados: [fintechs / crédito / setor específico]

NARRATIVA CONSTRUÍDA NA MÍDIA:
  Temas recorrentes: [lista de ângulos que aparecem nas matérias]
  Porta-vozes usados: [CEO / diretores / outros]
  Dados divulgados: [números que a empresa usa para aparecer na mídia]
  Posicionamento declarado: [como a empresa se descreve para a imprensa]

DECLARAÇÕES-CHAVE DO CEO / LIDERANÇA:
  "[citação 1]" — [fonte] — [data]
  "[citação 2]" — [fonte] — [data]

ANÁLISE ESTRATÉGICA:
  A empresa usa PR proativamente ou reativo?
  Qual narrativa está construindo para investidores vs clientes?
  Há anúncios de expansão, FIDC, novos produtos sendo veiculados?
```

---

## Framework 4 — Análise de Canal de Entrada

O canal de entrada (como o lead chega pela primeira vez) é a decisão mais reveladora da estratégia de distribuição:

```
ANÁLISE DO CANAL DE ENTRADA
─────────────────────────────────────────────
Canal principal de entrada: [WhatsApp / formulário / app / telefone / balcão]
Existe simulador antes do contato? [sim / não]
O funil começa com dado ou com conversa? [dado = formulário / conversa = WhatsApp]

IMPLICAÇÕES ESTRATÉGICAS:
- Funil iniciado por conversa (WhatsApp sem formulário):
  → Prioriza confiança sobre eficiência. Bot triagem + humano fechamento.
  → Dificulta tracking de funil mas aumenta conversão por confiança.
  → Funciona para ICP que desconfia de automação.

- Funil iniciado por dado (formulário / simulador):
  → Prioriza eficiência e dados. Tracking preciso. CRM estruturado.
  → Funciona para ICP mais digitalizado e menos avesso a formulários.
  → Risco: abandono por burocracia percebida.

QUAL É A APOSTA DESTA EMPRESA:
  [análise de qual ICP está sendo priorizado e por quê]
```

---

## Framework 5 — Síntese de Estratégia de Distribuição

```
SÍNTESE ESTRATÉGICA
─────────────────────────────────────────────
Empresa: [nome]

RESPOSTA ÀS 5 PERGUNTAS CENTRAIS:
1. Como o cliente descobre a empresa?
   [busca orgânica / anúncio pago / indicação / influenciador / TV]

2. Como o cliente é convencido a tentar?
   [prova social / garoto-propaganda / nota RA / tempo de mercado / oferta]

3. Como o cliente completa a primeira transação?
   [fluxo: canal de entrada → etapas → momento de confiança → fechamento]

4. Como a empresa retém e faz cross-sell?
   [evidências de comunicação pós-venda / múltiplos produtos / programa de fidelidade]

5. O que diferencia esta empresa dos concorrentes diretos?
   [diferencial real vs percebido]

AVALIAÇÃO DE MATURIDADE:
  Aquisição:    [Básica / Estruturada / Avançada / Best-in-class]
  Conversão:    [Básica / Estruturada / Avançada / Best-in-class]
  Retenção:     [Básica / Estruturada / Avançada / Best-in-class]
  Reputação:    [Básica / Estruturada / Avançada / Best-in-class]
  Marca:        [Básica / Estruturada / Avançada / Best-in-class]
```

---

## Protocolo de Lacunas

Ao final de qualquer análise, documentar obrigatoriamente:

```
LACUNAS IDENTIFICADAS
─────────────────────────────────────────────
LACUNA 1: [o que não foi possível coletar]
  Impacto: crítico / relevante / complementar
  Como coletar: [instrução precisa]
  Tempo estimado: [x minutos / horas]
  O que capturar: [lista do que registrar]

LACUNA 2: [...]
```

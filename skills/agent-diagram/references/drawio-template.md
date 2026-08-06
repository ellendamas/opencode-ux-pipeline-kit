# draw.io Template Base

## Estrutura mínima de um nó de agente

Cada agente é composto por 3–5 `mxCell` no draw.io:

### 1. Nó principal (obrigatório)
```xml
<mxCell id="[prefix]" 
  value="&lt;b&gt;Nome do Agente&lt;/b&gt;&lt;br&gt;&lt;font style='font-size:11px;'&gt;função resumida&lt;/font&gt;"
  style="rounded=1;whiteSpace=wrap;html=1;fillColor=[fill];strokeColor=[stroke];fontColor=[font];fontSize=13;"
  vertex="1" parent="1">
  <mxGeometry x="[x]" y="[y]" width="300" height="56" as="geometry" />
</mxCell>
```

### 2. Célula de skill (quando presente) — amarelo
```xml
<mxCell id="[prefix]_sk"
  value="skill: [nome]/SKILL.md"
  style="rounded=1;whiteSpace=wrap;html=1;fillColor=#fff2cc;strokeColor=#d6b656;fontColor=#4d3a00;fontSize=10;"
  vertex="1" parent="1">
  <mxGeometry x="[x]" y="[y+58]" width="150" height="22" as="geometry" />
</mxCell>
```

### 3. Célula de tool (quando presente) — verde
```xml
<mxCell id="[prefix]_tool"
  value="tool: bash · task · [outros]"
  style="rounded=1;whiteSpace=wrap;html=1;fillColor=#d5e8d4;strokeColor=#82b366;fontColor=#1a3a18;fontSize=10;"
  vertex="1" parent="1">
  <mxGeometry x="[x+152]" y="[y+58]" width="148" height="22" as="geometry" />
</mxCell>
```

### 4. Célula de output (quando presente) — cor do grupo
```xml
<mxCell id="[prefix]_out"
  value="output: [artefato.md]"
  style="rounded=1;whiteSpace=wrap;html=1;fillColor=[fill_grupo];strokeColor=[stroke_grupo];fontColor=[font_grupo];fontSize=10;"
  vertex="1" parent="1">
  <mxGeometry x="[x]" y="[y+84]" width="300" height="22" as="geometry" />
</mxCell>
```

### 5. Célula de edit (quando presente)
- `edit: ask` → vermelho `#f8cecc` / `#b85450`
- `edit: allow` → azul `#dae8fc` / `#6c8ebf`

```xml
<mxCell id="[prefix]_edit"
  value="edit: [ask|allow]"
  style="rounded=1;whiteSpace=wrap;html=1;fillColor=[cor];strokeColor=[stroke];fontSize=10;"
  vertex="1" parent="1">
  <mxGeometry x="[x]" y="[y+58]" width="70" height="22" as="geometry" />
</mxCell>
```

---

## Containers (swimlanes)

### Container de sub-agentes paralelos
```xml
<mxCell id="sub" 
  value="Sub-agentes especializados"
  style="swimlane;startSize=24;fillColor=none;strokeColor=#aaaaaa;strokeDashArray=4 3;fontStyle=1;fontSize=11;fontColor=#888888;"
  vertex="1" parent="1">
  <mxGeometry x="60" y="[y]" width="1240" height="[h]" as="geometry" />
</mxCell>
```
Agentes dentro do container usam `parent="sub"` e coordenadas relativas.

### Container de cenários
```xml
<mxCell id="scen"
  value=""
  style="swimlane;startSize=0;fillColor=none;strokeColor=#aaaaaa;strokeDashArray=4 3;"
  vertex="1" parent="1">
  <mxGeometry x="60" y="[y]" width="1240" height="72" as="geometry" />
</mxCell>
```

---

## Setas

### Seta principal (fluxo sequencial)
```xml
<mxCell id="e_[from]_[to]" 
  style="edgeStyle=orthogonalEdgeStyle;" 
  edge="1" source="[from_id]" target="[to_id]" parent="1">
  <mxGeometry relative="1" as="geometry" />
</mxCell>
```

### Seta de input externo (lateral)
```xml
<mxCell id="e_ext_[agent]"
  style="edgeStyle=orthogonalEdgeStyle;"
  edge="1" source="[ext_node_id]" target="[agent_id]" parent="1">
  <mxGeometry relative="1" as="geometry" />
</mxCell>
```

### Seta de retrabalho (tracejada vermelha, volta para cima)
```xml
<mxCell id="e_retr_back"
  style="edgeStyle=orthogonalEdgeStyle;dashed=1;strokeColor=#b85450;"
  edge="1" source="retrabalho" target="sub" parent="1">
  <mxGeometry relative="1" as="geometry">
    <Array as="points">
      <mxPoint x="[x_direita]" y="[y_retr]" />
      <mxPoint x="[x_direita]" y="[y_sub]" />
    </Array>
  </mxGeometry>
</mxCell>
```

---

## Legenda padrão (sempre no canto superior direito)

```xml
<mxCell id="leg" value="Legenda"
  style="swimlane;startSize=20;fillColor=none;strokeColor=#aaaaaa;fontStyle=1;fontSize=10;fontColor=#888888;"
  vertex="1" parent="1">
  <mxGeometry x="[pageWidth-280]" y="40" width="260" height="110" as="geometry" />
</mxCell>

<mxCell id="l1" value="skill: SKILL.md"
  style="rounded=1;whiteSpace=wrap;html=1;fillColor=#fff2cc;strokeColor=#d6b656;fontColor=#4d3a00;fontSize=10;"
  vertex="1" parent="leg">
  <mxGeometry x="10" y="28" width="115" height="24" as="geometry" />
</mxCell>

<mxCell id="l2" value="tool: bash / task"
  style="rounded=1;whiteSpace=wrap;html=1;fillColor=#d5e8d4;strokeColor=#82b366;fontColor=#1a3a18;fontSize=10;"
  vertex="1" parent="leg">
  <mxGeometry x="135" y="28" width="115" height="24" as="geometry" />
</mxCell>

<mxCell id="l3" value="edit: ask"
  style="rounded=1;whiteSpace=wrap;html=1;fillColor=#f8cecc;strokeColor=#b85450;fontColor=#6b0000;fontSize=10;"
  vertex="1" parent="leg">
  <mxGeometry x="10" y="60" width="80" height="24" as="geometry" />
</mxCell>

<mxCell id="l4" value="edit: allow"
  style="rounded=1;whiteSpace=wrap;html=1;fillColor=#dae8fc;strokeColor=#6c8ebf;fontColor=#003366;fontSize=10;"
  vertex="1" parent="leg">
  <mxGeometry x="100" y="60" width="80" height="24" as="geometry" />
</mxCell>

<mxCell id="l5" value="output / artefato"
  style="rounded=1;whiteSpace=wrap;html=1;fillColor=#f5f5f5;strokeColor=#666666;fontColor=#333333;fontSize=10;"
  vertex="1" parent="leg">
  <mxGeometry x="10" y="82" width="240" height="20" as="geometry" />
</mxCell>
```

---

## Dimensionamento automático

| Agentes | Layout | pageWidth | pageHeight |
|---|---|---|---|
| ≤5 sequenciais | coluna única | 800 | 1100 |
| 6–8 orquestrador | 1 linha de sub-agentes | 1400 | 1000 |
| 9–12 orquestrador | 2 linhas de sub-agentes | 1400 | 1200 |
| Híbrido completo | múltiplos containers | 1400 | 1400 |

**Espaçamento vertical entre agentes sequenciais:** 128px por agente (56px nó + 22px skill + 22px tool + 28px margem).

**Espaçamento horizontal entre sub-agentes paralelos:** `(containerWidth - 40) / N` por agente, mínimo 150px.

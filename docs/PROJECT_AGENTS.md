# AGENTS.md — UX Pipeline Project Guidelines

## Project Overview

This is a UX pipeline project using specialized Claude agents for product design. The pipeline coordinates 8 specialist agents through a structured workflow to produce unified design deliverables.

## Available Agents

| Agent | Purpose |
|-------|---------|
| `ux-orchestrator` | Coordinates all agents, manages workflow |
| `ux-research` | User research, personas, journey maps |
| `visual-design` | Design tokens, components, design systems |
| `content-strategy` | UX writing, IA, microcopy, voice & tone |
| `accessibility` | WCAG audits, inclusive design specs |
| `ia-ml-ux` | AI/ML feature UX, human-in-the-loop |
| `prototype-testing` | Usability testing, test plans, metrics |
| `data-analyst` | Quantitative analysis, KPIs, A/B tests |
| `data-normalizer` | Consolidates and standardizes outputs |

## Build / Test Commands

No build commands exist yet — this is a design documentation project. If code is added later:

- **Run single test**: Implement based on test framework (likely Vitest or Jest for JS projects)
- **Lint**: Configure ESLint with TypeScript support
- **Typecheck**: Use `tsc --noEmit`

## Agent Workflow

### Standard Flow
```
research → data-analyst → normalizer → visual + content + a11y → normalizer → prototype-testing → final
```

### By Project Type
- **New product/feature**: research → data-analyst → normalizer → visual + content + a11y → normalizer → prototype-testing
- **UX Audit**: data-analyst → accessibility → ux-research → normalizer → visual + content → final
- **Design System**: visual-design → content-strategy → accessibility → ia-ml-ux → normalizer → prototype-testing

## Output Format

All agent outputs MUST use this frontmatter:

```markdown
---
agent: [agent-name]
project: [name]
[agent-specific fields]
date: [YYYY-MM-DD]
depends_on: [list of agent names]
status: draft | reviewed | approved
---
```

## Journey Spec (Mandatory for Screen Changes)

- Whenever a new screen is created or an existing screen is changed, create `journey-spec.md`.
- `journey-spec.md` must include a mandatory Amplitude taxonomy section.
- Use `snake_case` for every `event_name`.
- Include required event properties and tracking QA criteria.

## Naming Conventions

| Use | Not |
|-----|-----|
| `user` | customer, client, end-user |
| `screen` | page (mobile), view, panel |
| `page` | screen (web only) |
| `tap` | click (mobile) |
| `click` | tap (web) |
| `component` | element, widget, module |
| `token` | variable, style, atom |
| `flow` | journey, path, sequence |
| `error message` | error text, validation message |
| `empty state` | zero state, null state |
| `loading state` | skeleton, spinner state |
| `CTA` | button text, action label |

## Platform Labels

Always specify platform explicitly:
- `iOS` — not "iPhone" or "Apple"
- `Android` — not "Google" or "Material"
- `Web` — not "Desktop" or "Browser"
- `Mobile` — only when iOS + Android together
- `Cross-platform` — when Mobile + Web together

## Status Definitions

| Status | Meaning |
|--------|---------|
| `draft` | Being created, not ready for review |
| `reviewed` | Ready for team review |
| `approved` | Signed off, ready for development |
| `shipped` | In production |
| `deprecated` | No longer valid |

## Research Quality Standards

- Minimum 5 participants for qualitative studies
- Recruit from actual ICP, not convenience sample
- Separate observations from interpretations
- Triangulate findings across at least 2 methods before recommending

## Accessibility Requirements

All designs must meet WCAG 2.1 AA:
- Text contrast ≥ 4.5:1 (AA) / 7:1 (AAA)
- Touch targets ≥ 44x44pt (mobile) / 32x32px (web)
- All interactive elements keyboard accessible
- Screen reader labels on all controls

## Mobile Standards

- iOS: 44x44pt minimum touch target, VoiceOver support, Dynamic Type
- Android: 48x48dp minimum, TalkBack support, scalable pixels

## Web Standards

- 32x32px minimum click targets (WCAG 2.5.5)
- Breakpoints: 320px / 768px / 1024px / 1280px / 1440px
- Hover states required on all interactive elements
- Visible focus ring on all interactive elements

## AI/ML UX Principles

1. **Transparency**: Users know AI is involved, what data used, confidence level
2. **Control**: Users can override, undo, or disable AI features
3. **Graceful Degradation**: Fall back to manual when AI fails
4. **Appropriate Trust**: Don't oversell AI accuracy, show confidence when relevant

## Usability Test Metrics

| Metric | Target |
|--------|--------|
| Task completion rate | >80% |
| SUS score | >68 |
| Error rate | <2 per task |
| Time on task | baseline or target |

## File Structure for Handoff

```
/[project-name]-handoff/
├── 00-executive-summary.md
├── 01-research-insights.md
├── 02-design-tokens.md
├── 03-component-specs.md
├── 04-content-specs.md
├── 05-accessibility-specs.md
├── 06-ai-ux-specs.md (if applicable)
├── 07-validation-plan.md
├── 08-open-questions.md
└── 09-glossary.md
```

## Quality Gates

Before releasing unified document, verify:
- All expected agent outputs received
- No unresolved terminology conflicts
- No unresolved specification contradictions
- All platform labels consistent
- All status fields aligned
- Glossary complete with domain terms
- Open questions documented with owner assigned
- Journey spec present for any new/changed screen, with Amplitude taxonomy complete

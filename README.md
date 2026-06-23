# AI Security Incident Response Lab

Enterprise AI Security detection engineering and incident response framework for Microsoft Sentinel, Microsoft Agent 365, Microsoft Purview, Microsoft 365 Copilot, Security Copilot, Copilot Studio, Azure AI Foundry, Azure OpenAI, and Retrieval-Augmented Generation workloads.

This project maps AI, Copilot, data security, and agentic security threats to OWASP GenAI / LLM Top 10 risks and provides practical KQL detections, telemetry requirements, investigation guidance, and Microsoft Logic App / Sentinel Playbook response patterns.

## Version

**Current version:** 1.1

## Project Goals

- Build a professional AI Security Operations reference project.
- Map detections to OWASP GenAI / LLM Top 10 risk categories.
- Treat Microsoft Agent 365 as a first-class AI agent control-plane telemetry source.
- Treat Microsoft Purview as a first-class AI data security and exfiltration telemetry source.
- Provide Microsoft Sentinel KQL detections for AI, Copilot, Agent 365, and Purview-driven data security scenarios.
- Document required telemetry for each detection.
- Define investigation and response procedures.
- Provide Logic App / Playbook automation build steps.

## Repository Structure

```text
.
├── data-sources/
│   └── required-data-sources.md
├── detections/
│   ├── AGENT01-Unauthorized-Tool-Use.kql
│   ├── AGENT02-Agent-Privilege-Escalation.kql
│   ├── AGENT03-Agent-Data-Exfiltration.kql
│   ├── AGENT04-Abnormal-Agent-Execution-Volume.kql
│   ├── LLM01-Prompt-Injection.kql
│   ├── LLM02-Sensitive-Information-Disclosure.kql
│   ├── LLM06-Excessive-Agency.kql
│   ├── LLM07-System-Prompt-Leakage.kql
│   ├── LLM10-Unbounded-Consumption.kql
│   ├── PURVIEW01-Sensitive-Data-Exposure.kql
│   ├── PURVIEW02-AI-Assisted-Data-Exfiltration.kql
│   ├── PURVIEW03-Copilot-Oversharing.kql
│   └── PURVIEW04-Agent-Access-to-Regulated-Data.kql
├── hunting/
│   └── AI-Security-Hunting-Queries.kql
├── incident-response/
│   └── AI-Security-IR-Runbook.md
├── matrices/
│   └── OWASP-GenAI-Security-Detection-Matrix.md
├── playbooks/
│   ├── README.md
│   ├── agent-security-response.md
│   ├── prompt-injection-response.md
│   ├── purview-data-exfiltration-response.md
│   └── sensitive-data-disclosure-response.md
└── scripts/
    └── deploy-to-github.sh
```

## Core Platforms

- Microsoft Sentinel
- Microsoft Defender XDR
- Microsoft Agent 365
- Microsoft Purview
- Microsoft 365 Copilot
- Microsoft Security Copilot
- Microsoft Copilot Studio
- Azure AI Foundry
- Azure OpenAI
- Azure AI Content Safety / Prompt Shields
- Microsoft Entra ID
- Azure Logic Apps

## Detection Engineering Model

AI security detections should correlate these telemetry planes:

1. **Identity Plane:** users, service principals, managed identities, agent identities, delegated permissions.
2. **AI Activity Plane:** prompts, responses, models, token usage, content safety classifications.
3. **Agent Plane:** Agent 365 inventory, ownership, execution history, tool calls, connector usage, relationships, quarantine status.
4. **Data Security Plane:** Microsoft Purview sensitivity labels, DLP alerts, audit logs, insider risk, eDiscovery, data classification.
5. **Enterprise Data Plane:** SharePoint, OneDrive, Teams, Exchange, Microsoft Graph, Defender XDR.
6. **Automation Plane:** Sentinel incidents, Logic App runs, remediation activity, escalation workflow.

## Recommended Custom Tables

| Table | Purpose |
|---|---|
| `AIApp_CL` | AI app prompts, responses, sessions, model metadata |
| `AIToolExecution_CL` | Agent/plugin/tool execution telemetry |
| `Agent365_CL` | Microsoft Agent 365 inventory, posture, relationships, risk, events |
| `AIGateway_CL` | AI gateway, proxy, WAF, API management, content filtering |
| `AIContentSafety_CL` | Prompt Shield and content safety classification events |
| `PurviewDLP_CL` | Purview DLP events and policy matches |
| `PurviewSensitivity_CL` | Sensitivity labels and classification metadata |
| `PurviewInsiderRisk_CL` | Insider Risk Management alerts and risk indicators |

## Disclaimer

This repository is intended for defensive security research, detection engineering, and incident response education. Validate all detections in a non-production environment before production deployment.

# Logic App / Sentinel Playbook Automation

This folder documents response automation patterns for AI, Purview, and agentic security detections.

## Recommended Playbooks

| Playbook | Trigger | Primary Use Case |
|---|---|---|
| Prompt Injection Response | Microsoft Sentinel incident | LLM01 prompt injection |
| Sensitive Data Disclosure Response | Microsoft Sentinel incident | LLM02 data leakage |
| Agent Security Response | Microsoft Sentinel incident | Agent 365, Copilot Studio, excessive agency, unauthorized tool use |
| Purview Data Exfiltration Response | Microsoft Sentinel incident | DLP, sensitive data exposure, Copilot oversharing, AI-assisted exfiltration |

## Standard Build Pattern

1. Create a Consumption Logic App.
2. Enable System-Assigned Managed Identity.
3. Grant required RBAC permissions.
4. Add Microsoft Sentinel trigger.
5. Parse incident entities and custom details.
6. Apply tags and severity.
7. Correlate user, agent, data source, and DLP evidence.
8. Notify SOC via Teams and email.
9. Execute containment action if conditions match.
10. Add incident comment with remediation status.
11. Update incident owner/status.

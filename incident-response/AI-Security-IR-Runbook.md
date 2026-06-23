# AI Security Incident Response Runbook

## Purpose

This runbook provides a structured response process for AI, Copilot, Microsoft Agent 365, Microsoft Purview, and agentic workload incidents.

## Incident Categories

- Prompt injection
- Sensitive information disclosure
- System prompt leakage
- Excessive agency
- Unauthorized agent tool use
- Agent privilege escalation
- Agent data exfiltration
- AI-assisted data exfiltration
- Copilot oversharing
- Agent access to regulated data
- RAG poisoning or retrieval abuse
- Token abuse / unbounded consumption

## Triage

1. Confirm detection source and timestamp.
2. Identify user, agent, application, model, session, source IP, and affected data.
3. Determine if the event was blocked, allowed, or partially executed.
4. Review prompts, responses, tool calls, and connector usage.
5. Review Microsoft Purview sensitivity labels, DLP matches, insider risk alerts, and audit evidence.
6. Identify whether the incident involves regulated data, secrets, privileged actions, or external sharing.

## Containment

- Disable or quarantine the affected agent.
- Disable risky plugin/tool/connector.
- Revoke affected user sessions.
- Revoke exposed API keys or secrets.
- Block external sharing links.
- Restrict SharePoint/OneDrive access.
- Temporarily block risky model deployment or AI gateway route.
- Apply Conditional Access or Defender controls if identity compromise is suspected.

## Investigation

- Review Microsoft Agent 365 telemetry for ownership, registration status, risk posture, permissions, relationships, and lifecycle events.
- Review Microsoft Purview DLP, sensitivity label, audit, insider risk, and eDiscovery evidence.
- Review AI application prompt/response logs.
- Review Microsoft 365 audit logs for data access.
- Review Entra ID sign-ins and audit logs.
- Review Defender XDR alerts/incidents.
- Review Logic App and automation run history.
- Preserve all prompts, responses, model metadata, file metadata, sensitivity labels, DLP policies, and session identifiers.

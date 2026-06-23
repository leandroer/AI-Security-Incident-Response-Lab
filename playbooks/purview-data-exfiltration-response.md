# Microsoft Purview Data Exfiltration Response Playbook

## Trigger

Microsoft Sentinel Incident trigger.

## Conditions

- Incident title contains `PURVIEW`
- Detection name contains `Sensitive Data Exposure`, `AI Assisted Data Exfiltration`, `Copilot Oversharing`, or `Agent Access to Regulated Data`
- Severity is High or Critical

## Automated Actions

1. Get Sentinel incident details.
2. Extract user, agent, file, site, sensitivity label, SIT, DLP policy, and operation.
3. Add tags: `AI-Security`, `Microsoft-Purview`, `Data-Exfiltration`, `DLP`.
4. Assign incident to SOC Tier 2 and data protection owner.
5. Post Teams Adaptive Card.
6. Send email to SOC and compliance/data owner.
7. Optional: revoke Entra session.
8. Optional: remove anonymous sharing links.
9. Optional: disable or quarantine the agent.
10. Optional: disable connector or delegated permission.
11. Add incident comment documenting evidence and containment.
12. Update incident status to Active.

## Logic App Build Steps

1. Create a Consumption Logic App.
2. Enable System-Assigned Managed Identity.
3. Add Microsoft Sentinel trigger: when incident is created.
4. Add condition: incident title contains `PURVIEW`.
5. Add action: Get incident.
6. Add action: Parse JSON custom details.
7. Add action: Update incident labels and severity.
8. Add Teams Adaptive Card notification.
9. Add email notification to SOC and data owner.
10. Add optional HTTP or Graph actions for containment.
11. Add incident comment with remediation status.

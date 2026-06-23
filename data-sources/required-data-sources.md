# Required Data Sources

This framework depends on telemetry from AI applications, Microsoft security platforms, Microsoft Agent 365, Microsoft Purview, Copilot services, identity systems, enterprise data sources, and automation workflows.

## Telemetry Priority

1. Microsoft Agent 365
2. Microsoft Purview
3. Microsoft 365 Copilot
4. Microsoft Security Copilot
5. Copilot Studio
6. Azure AI Foundry
7. Azure OpenAI
8. RAG / Vector Databases
9. Microsoft Defender XDR
10. Microsoft Entra ID
11. Microsoft Sentinel
12. Logic Apps / Automation

## 1. Microsoft Agent 365 Telemetry

Microsoft Agent 365 should be treated as a primary control-plane telemetry source for enterprise AI agents.

### Required Signals

- Agent inventory
- Agent identity and registration status
- Agent owner / creator
- Agent permissions and delegated access
- Agent lifecycle events
- Agent execution history
- Agent-to-user relationships
- Agent-to-data relationships
- Agent-to-agent relationships
- Agent access reviews
- Agent risk posture
- Agent quarantine / disablement events
- Agent policy violations
- Agent connector usage
- Agent tool invocation history
- Agent behavior telemetry
- Agent security alerts

### Security Use Cases

- Detect unmanaged or unregistered agents.
- Detect agents accessing sensitive Microsoft 365 data.
- Detect agent privilege escalation.
- Detect abnormal autonomous actions.
- Detect agent-to-agent abuse chains.
- Detect agents using unauthorized connectors.
- Detect rogue or compromised agents.
- Detect excessive agent execution volume.
- Detect agents interacting with high-risk users, mailboxes, SharePoint sites, Teams, or business applications.

## 2. Microsoft Purview Telemetry

Microsoft Purview provides critical telemetry for identifying sensitive data access, oversharing, exfiltration, insider threats, and AI-assisted data exposure.

### Data Security Signals

- Sensitivity labels
- Sensitivity label changes
- Data classification events
- Sensitive Information Types
- Trainable classifier matches
- Exact Data Match events
- DLP policy matches
- DLP policy overrides
- DLP policy exceptions
- DLP incidents
- DLP alert metadata

### Insider Risk Signals

- Insider Risk alerts
- Risky user activity
- Data theft indicators
- Data hoarding indicators
- Policy violations
- User risk score changes
- Departing employee risk indicators
- Security policy bypass activity

### Data Access Signals

- SharePoint file access
- OneDrive file access
- Exchange mailbox access
- Teams file access
- External sharing events
- Anonymous link creation
- Link permission changes
- File download activity
- File sync activity
- Mass file access activity

### AI Security Signals

- Microsoft 365 Copilot interactions
- Copilot data access paths
- Prompt-to-document relationships
- Sensitive data grounding events
- AI-generated content labeling
- AI data access auditing
- AI content exposure events
- Agent access to regulated data
- Agent or Copilot use of labeled documents

### Compliance Signals

- Audit logs
- eDiscovery cases
- Content Search results
- Retention policy events
- Records management events
- Communication Compliance events

### Recommended Sentinel Integrations

- OfficeActivity
- Microsoft Purview Audit
- Microsoft Purview DLP
- Microsoft Purview Insider Risk Management
- Microsoft Purview Communication Compliance
- Microsoft 365 Unified Audit Log

## 3. Microsoft 365 Copilot Telemetry

- Copilot interaction logs
- Prompt activity
- Response activity
- Plugin usage
- Copilot agent execution events
- Copilot conversation metadata
- User/session context
- Data grounding events
- File, Teams, email, and SharePoint references

## 4. Security Copilot Telemetry

- Prompt history
- Promptbook execution events
- Plugin executions
- Skill invocations
- Analyst interactions
- Generated response metadata
- Investigation session metadata

## 5. Copilot Studio Agent Telemetry

- Agent conversation logs
- Agent action invocations
- Agent workflow executions
- Agent authentication events
- Agent connector usage
- Agent escalation events
- Agent publishing lifecycle events

## 6. Azure AI Foundry / Azure OpenAI Telemetry

- Azure OpenAI diagnostic logs
- Azure AI Foundry project logs
- Prompt and response logs
- Token usage metrics
- Model deployment metadata
- Content filtering events
- Azure AI Content Safety events
- Prompt Shields events

## 7. RAG and Vector Database Telemetry

- Vector database query logs
- Embedding request logs
- Embedding generation logs
- Vector index changes
- Knowledge base access logs
- Semantic search query logs
- Retrieval source attribution
- Document ingestion metadata

## 8. Microsoft Security Telemetry

- Microsoft Sentinel incidents and analytics rules
- Microsoft Defender XDR incidents and alerts
- Microsoft Entra ID sign-in logs
- Microsoft Entra audit logs
- Defender for Cloud Apps events
- Office 365 Unified Audit Log
- SharePoint and OneDrive file access logs
- Teams activity logs
- Exchange activity logs
- AzureActivity
- AzureDiagnostics

## 9. Automation and Response Telemetry

- Logic App workflow run history
- Sentinel Playbook execution logs
- API Management logs
- Azure Function logs
- ServiceNow / ITSM ticketing events
- Remediation action logs
- Privileged Identity Management events

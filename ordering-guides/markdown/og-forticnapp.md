Ordering Guide
FortiCNAPP
Welcome to the Fortinet FortiCNAPP Ordering Guide. This guide helps customers
understand and navigate the options available for deploying Fortinet’s comprehensive,
unified, and data-driven platform for securing cloud environments from code to cloud,
including visibility across infrastructure, workloads, identities, and sensitive data.
Key Highlights
• Unified Risk Management: Surfaces only the most critical risks by correlating
posture (CSPM/KSPM), workloads (CWP), permissions (CIEM), and sensitive data
(DSPM) into context-rich Exposure Polygraph visualizations.
• Continuous Compliance: Ensure continuous compliance against major industry
standards such as SOC2, ISO 27001, HIPAA, HITRUST, PCI, NIST, FISMA, PII, and CIS
Benchmarks.
• Advanced Threat Detection: Features Polygraph behavior-based anomaly detection
to reduce alert noise by automatically building baseline models of behavior and
alerting only on critical events.
• Automated Security: Eliminates the need to write and maintain manual rules for
threat detection.
• Deep Visibility: Gain complete visibility across infrastructure, workloads, identities,
and sensitive data from code to cloud.
• Data Security Visibility: Discover and classify sensitive data across cloud storage
services and understand how data is exposed through access permissions,
vulnerabilities, and misconfigurations.
• Improved Productivity: Helps security teams investigate alerts up to 4x faster.
Available In
FortiCNAPP is a cloud-based SaaS solution, available for various cloud environments
including Amazon Web Services (AWS), Google Cloud, Microsoft Azure, or Kubernetes. It
can be purchased through the AWS Marketplace or Google Cloud Marketplace.

FortiCNAPP Ordering Guide
Phase 1: Product Portfolio & Capabilities
FortiCNAPP is offered in two independent parts that can be purchased separately: Cloud Security Platform and Code Security.
Cloud Security Platform
Combines Cloud Security Posture Management (CSPM), Cloud Workload Protection (CWP), Cloud Infrastructure Entitlement
Management (CIEM), Attack Path Analysis, and Data Security Posture Management (DSPM).
• Resource Discovery & Configuration: Multi-cloud asset discovery and configuration checks including custom policy
creation.
• IaC & Secrets Detection: Scans IaC templates and identifies exposed secrets (API keys, credentials) across environments.
• Vulnerability Assessments: Inline, container, and host scanning powered by standard CVSS/CVE scoring and custom risk
scoring (active exposure).
• CIEM & Entitlements: Entitlement discovery and scoping guidance to remediate overly permissive identities.
• Runtime Workload Monitoring: Continuous runtime monitoring, snapshots, behavior threat detection, File Integrity
Monitoring (FIM), and Kubernetes admission enforcement.
• Data Security Posture (DSPM): Automated data discovery across S3/Blob, 40+ FortiGuard patterns for classification (PII,
PCI, HIPAA), FortiGuard AV malware scanning, and risk correlation.
• SCA & SBOM: Identifies vulnerable open-source components and license risks while generating and maintaining an up-to-
date Software Bill of Materials (SBOM).
• IaC Security: Identifies misconfigurations and security risks in infrastructure-as-code templates before deployment through
CI/CD pipelines.
• Secrets: Identifies hardcoded credentials, API keys, tokens, and other sensitive secrets in source code and repositories.
• DAST: Performs black-box security testing of running web and AI applications to identify exploitable vulnerabilities from an
external attacker’s perspective.
2

| FortiCNAPP |     |     |     | Ordering Guide |
| ---------- | --- | --- | --- | -------------- |
Phase 2: Licensing Model Decision Guide
Resource-Based Licensing
The FortiCNAPP Risk & Threat License is the modern, primary billing model. It aligns cost directly with protected cloud
resources, provides complete platform capabilities (CSPM, CWP, CIEM, DSPM, Attack Path Analysis, SCA, IaC Security), and is
the only model eligible for promotional discounts, executive pricing approvals, and special deal registration.
Legacy vCPU Licensing (Renewals & Maintenance Only)
Traditional Cloud Security License Tiers (Standard, Professional, Enterprise) and vCPU SKUs are maintained strictly for contract
renewals and legacy expansions. Special discounts do not apply to legacy vCPU/Tier-based licenses.
Capability Comparison Matrix
FEATURE/CAPABILITY vCPU STANDARD TIER vCPU PROFESSIONAL TIER vCPU ENTERPRISE TIER RESOURCE-BASED
| Resource Discovery & Custom Policies     |    |    |    | Full Access |
| ---------------------------------------- | --- | --- | --- | ----------- |
| Secrets Detection & Compliance Reporting |    |    |    | Full Access |
| Infrastructure as Code (IaC) Scanning    |     |     |    | Full Access |
Container, Host & Inline Vulnerability Scans    Full Access
| Custom Risk Scoring & K8s Admission Control |     |    |    | Full Access |
| ------------------------------------------- | --- | --- | --- | ----------- |
| CIEM Permissive Entitlement Guidance        |     |    |    | Full Access |
| Attack Path Analysis (Exposure Polygraph)   |     |    |    | Full Access |
Polygraph Behavior Threat Detection (Cloud)    Full Access
| Polygraph Threat Detection (Managed K8s) |     |    |    | Full Access |
| ---------------------------------------- | --- | --- | --- | ----------- |
| Runtime Monitoring, FIM & Snapshots      |     |     |    | Full Access |
| Detection of Vulnerable Code Execution   |     |     |    | Full Access |
| DSPM Data Discovery (S3, Azure Blob)     |    |    |    | Full Access |
| DSPM FortiGuard Classification & Malware |     |     |    | Full Access |
| DSPM Data Exposure Risk Correlation      |     |     |    | Full Access |
| Developer Pipeline integration           |     |     |     | Full Access |
| Special Discount Program Eligibility     |     |     |     |            |
3

FortiCNAPP Ordering Guide
Phase 3: Ordering Information & SKUs
Important: Always verify SKU availability, descriptions, pricing, minimum order quantities, and other ordering details against
the current Fortinet Price List before placing an order. In the event of any discrepancy, the current Fortinet Price List takes
precedence over this Ordering Guide.
Resource-Based License SKUs (Recommended - Discount Eligible)
SKU DESCRIPTION MOQ
FC1-10-CNAPP-1334-02-DD FortiCNAPP Risk & Threat Coverage for 250 to 2,499 resources. Includes FortiCare Premium Support. 250 Resources
FC2-10-CNAPP-1334-02-DD FortiCNAPP Risk & Threat Coverage for 2,500 to 4,999 resources. Includes FortiCare Premium Support. 2,500 Resources
FC3-10-CNAPP-1334-02-DD FortiCNAPP Risk & Threat Coverage for 5,000+ resources. Includes FortiCare Premium Support. 5,000 Resources
FC1-10-CNAPP-1338-02-DD Extended data retention (180 days instead of 90 days). Resource count must match 1334 SKU. 250 Resources
Legacy vCPU & Tier SKUs (Renewals Only - No Special Discounts)
Calculated on Agent and Resource Management cloud configuration only. DSPM and AWLS are excluded from vCPU usage
calculation.
SKU DESCRIPTION MOQ
FC1-10-LACWK-1063-02-DD FortiCNAPP - Standard tier. Entitlement per-vCPU, including FortiCare Premium (1, 3, 5 Yr). 500 vCPUs
FC1-10-LACWK-1064-02-DD FortiCNAPP - Professional tier. Entitlement per-vCPU, including FortiCare Premium (1, 3, 5 Yr). 375 vCPUs
FC1-10-LACWK-1065-02-DD FortiCNAPP - Enterprise tier. Entitlement per-vCPU, including FortiCare Premium (1, 3, 5 Yr). 250 vCPUs
Add-On SKUs
SKU DESCRIPTION MOQ
FC1-10-DEVSC-216-02-DD FortiDAST Add-On – 5 additional stackable app entitlements (Requires base SKU 1306 or 1334). 5 Applications
DSPM Protected Data Capacity 1 TB, add-on subscription license, requires one of the FortiCNAPP Risk & Threat
FC1-10-DSPM-1407-02-DD 1TB
Coverage (1334) subscription licenses.
Professional Services SKUs
SKU DESCRIPTION MOQ
FP-10-QSCNAPP-DP1-00-02 FortiCNAPP QuickStart Standard: Quick implementation and onboarding. 2 Days
FP-10-QSCNAPP-DP3-00-03 FortiCNAPP QuickStart Enterprise: Thorough implementation and onboarding. 5 Days
FP-10-CNAPP-ODSF FortiCNAPP On-Demand Services Flex: Flexible blocks with designated architect. 6 Days
FP-10-PS001-831-01-01 FortiCNAPP Cloud Consulting Service - Essential. 3 Days
FP-10-PS001-831-01-01 FortiCNAPP Cloud Consulting Service - Preferred. 5 Days
FP-10-PS001-831-01-01 Cloud Security Posture Assessment (CSPA). 4 Days
FP-10-PS001-831-01-01 Application Security Posture Assessment (ASPA). 3 Days
FP2-10-PS001-832-02-12 Part-Time Designated Cloud Engineer. 2 Days/week (1 Yr)
4

FortiCNAPP Ordering Guide
Phase 4: Order Lifecycle, Support & Services
Order Lifecycle
Standard order lifecycle processes apply for New Orders, Adding More, Renewals, and Upgrades. It is recommended to use the
“co-term” tool to align contract expiration dates for simplicity and management when adding services.
FortiCare Support & Professional Services
• FortiCare Premium: Included with base licenses, offering ticket handling, firmware updates, and general software upgrades.
• QuickStart Standard (2 Days): Quick implementation and onboarding with guidance from expert architects, workshops, and
a Getting Started Plan.
• QuickStart Enterprise (5 Days): Thorough implementation with high-touch guidance, technical deployment plans, and
compliance burndown reports.
• On-Demand Services Flex (6 Days): Flexible engagement with a designated architect for custom integrations, tuning, and
enablement.
• Essential Consulting (3 Days): Focused on quick onboarding and integration with the Fortinet Security Fabric.
• Preferred Consulting (5 Days): Expands on Essential to include CI/CD integration, automation scripting, and design
documentation.
• Posture Assessments: Vendor-agnostic evaluations of Cloud Security (CSPA, 4 days) or Application Security (ASPA, 3
days).
• Part-Time Cloud Engineer: Dedicated engineer assisting with all Fortinet cloud products 2 days per week for 1 year.
Training & Certification
While specific FortiCNAPP certifications are not detailed, platform training and enablement is offered via professional services.
For broader training, explore the Fortinet Network Security Expert (NSE) Training and Certification Program.
Frequently Asked Questions (FAQs)
Is FortiCNAPP agent-based or agentless?
It employs a combined agentless and agent-based approach for data collection.
What compliance standards are supported?
SOC2, ISO 27001, HIPAA, HITRUST, PCI, NIST, FISMA, PII, and CIS Benchmarks.
Does FortiCNAPP integrate with third-party tools?
Yes, it integrates with tools like Jira, Slack, Splunk, ServiceNow, Datadog, etc.
How does it reduce alert fatigue?
It uses Polygraph anomaly detection to surface only critical, anomalous events.
How does it integrate with the Security Fabric?
It integrates directly with FortiGate, FortiAnalyzer, FortiSIEM, and FortiSOAR.
What is DSPM in FortiCNAPP?
It helps discover, classify, and prioritize risks to sensitive cloud data by correlating locations with permissions, vulnerabilities,
and attack paths.
www.fortinet.com
Copyright © 2026 Fortinet, Inc. All rights reserved. Fortinet®, FortiGate®, FortiCare® and FortiGuard®, and certain other marks are registered trademarks of Fortinet, Inc., and other Fortinet names herein may also be registered and/or common law trademarks of Fortinet. All other product or
company names may be trademarks of their respective owners. Performance and other metrics contained herein were attained in internal lab tests under ideal conditions, and actual performance and other results may vary. Network variables, different network environments and other condi-
tions may affect performance results. Nothing herein represents any binding commitment by Fortinet, and Fortinet disclaims all warranties, whether express or implied, except to the extent Fortinet enters a binding written contract, signed by Fortinet’s SVP Legal and above, with a purchaser
that expressly warrants that the identified product will perform according to certain expressly-identified performance metrics and, in such event, only the specific performance metrics expressly identified in such binding written contract shall be binding on Fortinet. For absolute clarity, any
such warranty will be limited to performance in the same ideal conditions as in Fortinet’s internal lab tests. Fortinet disclaims in full any covenants, representations, and guarantees pursuant hereto, whether express or implied. Fortinet reserves the right to change, modify, transfer, or otherwise
revise this publication without notice, and the most current version of the publication shall be applicable.
FCNAPP-OG-R10-20260819

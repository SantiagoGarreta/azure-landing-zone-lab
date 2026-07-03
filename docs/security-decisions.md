# Security Decisions

This document captures the initial security decisions for the Azure Landing Zone Mini Lab.

## Initial Decisions

- Use separated subnets to support network segmentation and future workload isolation.
- Apply Network Security Groups to restrict traffic between subnets and external sources.
- Avoid hardcoded secrets in Terraform, workflows, and documentation.
- Use Azure Key Vault for secrets management when secret-backed resources are introduced.
- Use Managed Identity where possible to reduce reliance on static credentials.
- Apply least privilege RBAC to users, groups, and future workloads.
- Send diagnostic logs to Log Analytics for centralized visibility.
- Validate Terraform before deployment to catch structural and syntax issues early.
- Scan infrastructure as code with Trivy and Checkov as part of the DevSecOps workflow.

## Rationale

These decisions prioritize secure defaults, reduce credential exposure, and make the repository easier to extend with stronger controls over time. The current phase focuses on establishing direction and guardrails before resource implementation begins.

## Review Notes

- Decisions should be revisited when module implementation starts.
- Additional controls may be required once workload patterns and connectivity needs are defined.

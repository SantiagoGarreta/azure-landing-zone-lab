# Architecture

## Problem Statement

Cloud environments are often created incrementally, which can lead to weak network boundaries, inconsistent identity controls, poor secrets handling, and limited visibility. This lab addresses that problem by defining a small but security-focused Azure foundation through Terraform.

## Proposed Solution

The proposed solution is a modular Terraform layout that provisions a dedicated Azure resource group with core shared services:

- Networking resources for segmentation
- Security boundaries through NSGs and RBAC
- Secret storage through Azure Key Vault
- Container image hosting through Azure Container Registry
- Logging through Log Analytics
- Identity support using managed identities

The repository also includes a GitHub Actions workflow to validate Terraform formatting and configuration before infrastructure is applied.

## High-Level Architecture

An engineer makes changes in GitHub, where GitHub Actions runs Terraform checks. Terraform then targets an Azure resource group hosting the landing zone components. The environment is segmented into subnets protected by NSGs, uses managed identity and RBAC for access control, stores secrets in Key Vault, and centralizes telemetry in Log Analytics.

See [architecture.mmd](/C:/Users/Usuario/Desktop/Proyectos/azure-landing-zone-lab/diagrams/architecture.mmd) for the Mermaid source diagram.

## Resource Responsibilities

- Resource Group: Logical container for lab resources
- Virtual Network: Private address space for the landing zone
- Subnets: Segment workloads and supporting services
- Network Security Groups: Control allowed traffic paths
- Key Vault: Central secret and key management location
- Azure Container Registry: Private image registry for future workloads
- Log Analytics Workspace: Central logging and diagnostic collection
- Managed Identity: Reduce reliance on stored credentials
- RBAC assignments: Enforce least privilege access

## Trust Boundaries

- GitHub to Azure: CI/CD boundary where pipeline validation occurs before deployment
- Azure Resource Group: Primary administrative scope for this lab
- VNet and subnets: Network isolation boundary between components
- Key Vault: Sensitive data boundary for secrets handling
- IAM and RBAC: Authorization boundary governing operator and workload access

## Design Assumptions

- A single `dev` environment is sufficient for the initial lab phase
- Azure credentials will be configured later when real Terraform resources are added
- Terraform modules will be implemented incrementally behind stable directory boundaries
- No real secrets, subscription IDs, tenant IDs, or credentials will be committed
- Validation and security scanning should happen before any deployment stage

## Future Improvements

- Implement reusable Terraform modules with versioned inputs and outputs
- Add `tflint`, Trivy, and Checkov enforcement to the pipeline
- Introduce remote state storage and state locking
- Add private endpoints and stricter egress controls where relevant
- Expand to multiple environments such as `test` or `prod`
- Add policy-as-code and governance controls

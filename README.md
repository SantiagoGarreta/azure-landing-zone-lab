# Azure Landing Zone Mini Lab

This repository contains a small Azure landing zone lab designed for a DevSecOps portfolio. It is intended to showcase secure infrastructure-as-code patterns with Terraform in a simple, professional, and extensible format.

Portfolio: https://santiagogarreta.github.io/devsecops-portfolio/

## Objective

Build a foundational Azure lab that demonstrates how to structure and validate secure cloud infrastructure using Terraform. The scope of this lab focuses on core platform building blocks, security boundaries, and CI-based infrastructure validation rather than a full production landing zone.

## Architecture Overview

The planned architecture uses Terraform to provision a scoped Azure resource group containing network, identity, secrets, logging, and container registry components. A GitHub Actions workflow will perform baseline Terraform validation and act as the starting point for future DevSecOps checks.

## Planned Azure Resources

- Resource Group
- Virtual Network
- Subnets
- Network Security Groups
- Azure Key Vault
- Azure Container Registry
- Log Analytics Workspace
- Managed Identity
- RBAC assignments

## Security Focus Areas

- Network segmentation
- Least privilege IAM
- Secrets management
- Centralized logging
- IaC validation
- Security scanning

## Repository Structure

```text
azure-landing-zone-lab/
|-- infra/
|   |-- modules/
|   |   |-- networking/
|   |   |-- key-vault/
|   |   |-- acr/
|   |   |-- logging/
|   |   `-- identity/
|   |-- environments/
|   |   `-- dev/
|   `-- README.md
|-- diagrams/
|   `-- architecture.mmd
|-- docs/
|   |-- architecture.md
|   |-- security-decisions.md
|   |-- how-to-deploy.md
|   `-- findings.md
|-- .github/
|   `-- workflows/
|       `-- terraform-checks.yml
|-- .gitignore
`-- README.md
```

## Planned Pipeline Checks

- `terraform fmt -check -recursive`
- `terraform init`
- `terraform validate`
- Future `tflint` integration
- Future Trivy IaC scanning
- Future Checkov policy scanning
- Future `terraform plan` execution with appropriate credentials

## Status

Work in progress.

## Disclaimer

This is a learning and portfolio lab. It is not a production-ready enterprise landing zone and does not currently implement the full set of controls, governance features, or operational processes expected in a real Azure platform environment.

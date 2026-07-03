# How To Deploy

This document provides placeholder deployment steps for the future Terraform implementation of this lab.

## Prerequisites

- Azure CLI
- Terraform
- Git
- An Azure subscription

## 1. Authenticate With Azure CLI

```bash
az login
```

## 2. Select the Target Subscription

Use a placeholder subscription variable and replace it locally when you are ready to deploy.

```bash
az account set --subscription "<your-subscription-id>"
```

## 3. Change to the Environment Directory

```bash
cd infra/environments/dev
```

## 4. Initialize Terraform

```bash
terraform init
```

## 5. Validate the Configuration

```bash
terraform validate
```

## 6. Review the Execution Plan

```bash
terraform plan -var="environment=dev"
```

## 7. Apply the Configuration

```bash
terraform apply -var="environment=dev"
```

## Notes

- Do not commit real `.tfvars` files containing sensitive values.
- Do not hardcode subscription IDs, tenant IDs, client secrets, or credentials in this repository.
- Additional deployment steps may be added once modules and providers are implemented.

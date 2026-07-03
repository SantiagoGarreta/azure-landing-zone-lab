# Terraform Layout

The `infra/` directory contains the Terraform structure for this lab. It separates reusable modules from environment-specific composition so the repository can stay maintainable as it grows.

## Structure

- `modules/`: Reusable building blocks for specific Azure capabilities such as networking, identity, logging, Key Vault, and ACR
- `environments/`: Environment entry points that compose modules for a given target such as `dev`

## Approach

The intention is to keep module logic isolated and reusable while environment directories define the deployment shape, variable values, and future backend/provider configuration. This makes it easier to add new environments later without duplicating core logic.

## Current Status

This directory currently provides structure and documentation only. Terraform resources, variables, outputs, and backend configuration will be implemented in the next phase.

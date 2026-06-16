# MBLZ-GrokFactory

A factory for Grok-related projects, experiments, and AI tools by MBLZ.

## Features
- Docker builds with ACR push
- Azure Key Vault integration for secrets
- CI/CD pipelines

## Setup
1. Configure Azure secrets (AZURE_CLIENT_ID, etc.) and KEYVAULT_NAME in GitHub repo settings.
2. Update REGISTRY in docker-build.yml.
3. Add your projects under `/projects/`.

See `.github/workflows/` for pipelines.
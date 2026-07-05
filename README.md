# Databricks Terraform + GitHub Actions Starter

This starter demonstrates a CI/CD flow..

GitHub Push
  -> terraform fmt
  -> terraform validate
  -> terraform plan
  -> terraform apply

Configure these GitHub Secrets:
- DATABRICKS_HOST
- DATABRICKS_TOKEN
- TF_VAR_workspace_url
- TF_VAR_token

# openai-with-aws-test3

This project provisions an S3 bucket using Terraform executed from GitHub Actions.

- **S3 Bucket:** `ontoscale-ai-london-test4`
- **Terraform Backend Bucket:** `ontoscale-terraform-backend`
- **AWS Access:** uses OIDC to assume the role stored in the `AWS_ROLE` GitHub secret.

The workflow in `.github/workflows/terraform.yml` initializes Terraform and applies the configuration automatically on pushes to `main`.

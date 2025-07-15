# openai-with-aws-test3

This project provisions an S3 bucket using Terraform executed from GitHub Actions.

- **S3 Bucket:** `ontoscale-ai-london-test4`
- **Terraform Backend Bucket:** `ontoscale-terraform-backend` (region `us-east-1`)
- **AWS Access:** uses OIDC to assume the role stored in the `AWS_ROLE` GitHub secret.

The workflow in `.github/workflows/terraform.yml` initializes Terraform and applies the configuration automatically on pushes to `main`.

## Lambda and API Gateway

Terraform also packages the Python code in `lambda/handler.py` and deploys it as a Lambda function. An HTTP API Gateway exposes the Lambda at the path `/create`. Invoking this endpoint creates a file in the bucket and returns the object key in the response.

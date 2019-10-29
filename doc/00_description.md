# tf-aws-lambda-layers

Terraform module to provision an AWS lambda layer
  
  * This module provisions an AWS Lambda Layer from a zip file in an S3 bucket.
  
This Lambda Layer module needs:

  * an existing s3 bucket
  * A lambda Layer packaged as zip

## Terraform versions

Terraform 0.12. Pin module version to `~> v2.0`. Submit pull-requests to `terraform12` branch.

Terraform 0.11. Pin module version to `~> v1.0`. Submit pull-requests to `terraform11` branch.

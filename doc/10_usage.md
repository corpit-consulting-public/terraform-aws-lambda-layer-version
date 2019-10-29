## Usage

```hcl

module "lambda_layers" {
  source              = "./modules/terraform-aws-lambda-layer-version"
  layer_name          = var.layer_name
  description         = var.description
  s3_bucket           = var.s3_bucket
  s3_key              = var.s3_key
  compatible_runtimes = var.compatible_runtimes
}

```

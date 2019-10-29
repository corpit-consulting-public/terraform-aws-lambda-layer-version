
# tf-aws-lambda-layers

Terraform module to provision an AWS lambda layer
  
  * This module provisions an AWS Lambda Layer from a zip file in an S3 bucket.
  
This Lambda Layer module needs:

  * an existing s3 bucket
  * A lambda Layer packaged as zip

## Terraform versions

Terraform 0.12. Pin module version to `~> v2.0`. Submit pull-requests to `terraform12` branch.

Terraform 0.11. Pin module version to `~> v1.0`. Submit pull-requests to `terraform11` branch.
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


## README.md
This README file was created runnnign generate-readme.sh placed insinde hooks directory.
If you want to update README.md file, run that script while being in 'hooks' folder.
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| description | Description of what your Lambda Layer does. | string | n/a | yes |
| layer\_name | A unique name for your Lambda Layer | string | n/a | yes |
| compatible\_runtimes | A list of Runtimes this layer is compatible with. Up to 5 runtimes can be specified. | list(string) | `<list>` | no |
| filename | The path to the function's deployment package within the local filesystem. If defined, The s3\_-prefixed options cannot be used. | string | `""` | no |
| license\_info | License info for your Lambda Layer | string | `""` | no |
| s3\_bucket | The S3 bucket location containing the function's deployment package. Conflicts with filename. This bucket must reside in the same AWS region where you are creating the Lambda function. | string | `""` | no |
| s3\_key | The S3 key of an object containing the function's deployment package. Conflicts with filename. | string | `""` | no |
| s3\_object\_version | he object version containing the function's deployment package. Conflicts with filename. | string | `""` | no |
| source\_code\_hash | Used to trigger updates. Must be set to a base64-encoded SHA256 hash of the package file specified with either filename or s3\_key. The usual way to set this is $$\{filebase64sha256\(file.zip\)\} \(Terraform 0.11.12 or later\) or $$\{base64sha256\(file\(file.zip\)\)\} \(Terraform 0.11.11 and earlier\), where file.zip is the local filename of the lambda layer source archive. | string | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| arn | The Amazon Resource Name \(ARN\) of the Lambda Layer with version. |
| layer\_arn | The Amazon Resource Name \(ARN\) of the Lambda Layer without version |
| version | This Lamba Layer version. |


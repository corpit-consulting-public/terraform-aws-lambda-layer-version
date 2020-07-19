resource "aws_lambda_layer_version" "lambda_layer" {
  #filename           = "lambda_layer_payload.zip"
  layer_name          = var.layer_name
  description         = var.description
  compatible_runtimes = var.compatible_runtimes
  s3_bucket           = var.s3_bucket
  s3_key              = var.s3_key
  s3_object_version   = var.s3_object_version
}


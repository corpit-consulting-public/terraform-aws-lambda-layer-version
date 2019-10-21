
output "arn" {
  description = "The Amazon Resource Name (ARN) of the Lambda Layer with version."
  value       = "${aws_lambda_layer_version.lambda_layer.arn}"
}

output "layer_arn" {
  description = "The Amazon Resource Name (ARN) of the Lambda Layer without version"
  value       = "${aws_lambda_layer_version.lambda_layer.layer_arn}"
}

output "version" {
  description = "This Lamba Layer version."
  value       = "${aws_lambda_layer_version.lambda_layer.version}"
}

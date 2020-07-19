variable "layer_name" {
  type        = string
  description = "A unique name for your Lambda Layer"
}

variable "filename" {
  type        = string
  description = "The path to the function's deployment package within the local filesystem. If defined, The s3_-prefixed options cannot be used."
  default     = ""
}

variable "s3_bucket" {
  type        = string
  description = "The S3 bucket location containing the function's deployment package. Conflicts with filename. This bucket must reside in the same AWS region where you are creating the Lambda function."
  default     = ""
}

variable "s3_key" {
  type        = string
  description = "The S3 key of an object containing the function's deployment package. Conflicts with filename."
  default     = ""
}

variable "s3_object_version" {
  type        = string
  description = "he object version containing the function's deployment package. Conflicts with filename."
  default     = ""
}

variable "description" {
  type        = string
  description = "Description of what your Lambda Layer does."
}

variable "compatible_runtimes" {
  type        = list
  description = "A list of Runtimes this layer is compatible with. Up to 5 runtimes can be specified."
  default     = []
}

variable "license_info" {
  type        = string
  description = " License info for your Lambda Layer"
  default     = ""
}

variable "source_code_hash" {
  type        = string
  description = "Used to trigger updates. Must be set to a base64-encoded SHA256 hash of the package file specified with either filename or s3_key. The usual way to set this is $${filebase64sha256(file.zip)} (Terraform 0.11.12 or later) or $${base64sha256(file(file.zip))} (Terraform 0.11.11 and earlier), where file.zip is the local filename of the lambda layer source archive."
  default     = ""
}


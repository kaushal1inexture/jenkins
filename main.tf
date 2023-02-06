provider "aws" {
  region = "us-west-2"
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
}
variable "access_key" {
  type        = string
  description = "AWS Access Key"
}

variable "secret_key" {
  type        = string
  description = "AWS Secret Key"
}
resource "aws_ecr_repository" "kaushal_ecr_codepipeline" {
  name = "codepipeline_kaushal-app"
}

output "ecr_repository_url" {
  value = aws_ecr_repository.kaushal_ecr_codepipeline.repository_url
}

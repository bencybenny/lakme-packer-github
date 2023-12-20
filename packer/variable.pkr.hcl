variable "ami_id" {
  type        = string
  description = "ami id of the source"
  default     = "ami-02e94b011299ef128"
}
variable "project_name" {
  type        = string
  description = "name of the project"
  default     = "lakme"
}
variable "project_env" {
  type        = string
  description = "environment of the project"
  default     = "prod"
}
locals {
image-timestamp = "${formatdate("DD-MM-YYYY-hh-mm",timestamp())}"
 image-name = "${var.project_name}-${var.project_env}-${local.image-timestamp}"
}

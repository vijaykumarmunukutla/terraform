variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
variable "AWS_REGION" {
 default = "ap-south-1"
}
variable "AMIS" {
type = map(string)
default = {
ap-south-1 = "ami-066c82dabe6dd7f73"
}
}

variable "bucket_name" {
  type        = string
  default     = "aws-route-terraform"
  
}

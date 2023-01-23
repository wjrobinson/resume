//Commonly used variables for Terraform use

variable "domain_name" {
  type        = string
  description = "The domain name for the website."
  default     = "willsresume.com"
}

variable "bucket_name" {
  type        = string
  description = "The name of the bucket without the www. prefix. Normally domain_name."
  default     = "www.willsresume.com"
}

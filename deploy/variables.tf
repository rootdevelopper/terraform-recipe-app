variable "prefix" {
  default = "raad"
}

variable "project" {
  default = "recipe-app-api-devops"
}

variable "contact" {
  default = "rdvxsoftware@gmail.com"
}

# variable "ami" {

# }

variable "instance_type" {
  default = "t2.micro"
}


variable "db_username" {
  description = "Username for the RDS postgress instance"
}

variable "db_password" {
  description = "Password for RDS postgress instance"
}

variable "bastion_key_name" {
  default = "recipe-app-api-devops-bastion"
}


variable "ecr_image_api" {
  description = "ECR image for API"
  default     = "135702375160.dkr.ecr.us-east-1.amazonaws.com/recipe-app-api-devops:latest"
}

variable "ecr_image_proxy" {
  description = "ECR image for Proxy"
  default     = "135702375160.dkr.ecr.us-east-1.amazonaws.com/recipe-app-api-proxy"
}

variable "django_secret_key" {
  description = "(optional) describe your variable"
}
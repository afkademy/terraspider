variable regions {
  type        = list
  default     = ["us-east-1", "us-east-2"]
  description = "Acceptable regions"
}

variable pri_cidrs {
  type        = list
  default     = [
    "10.10.10.0/28",
    "10.10.10.16/28",
    "10.10.10.32/28",
    "10.10.10.48/28",
    "10.10.10.64/28",
    "10.10.10.80/28",
    "10.10.10.96/28",
    "10.10.10.112/28"
  ]
  description = "private cidrs"
}

variable pub_cidrs {
  type        = list
  default     = [
    "10.10.10.128/28",
    "10.10.10.144/28",
    "10.10.10.160/28",
    "10.10.10.176/28",
    "10.10.10.192/28",
    "10.10.10.208/28",
    "10.10.10.224/28",
    "10.10.10.240/28"
  ]
  description = "public cidrs "
}

variable num_private_subnets {
  type        = number
  default     = 2
  description = "The number of private subnets to create. Max"
  validation {
    condition = var.num_private_subnets < 6
    error_message = "The number of private subnets must not exceed 5." 
  }
}

variable num_public_subnets {
  type        = number
  default     = 2
  description = "The number of public subnets to create"
  validation {
    condition = var.num_public_subnets < 6
    error_message = "The number of private subnets must not exceed 5." 
  }
}

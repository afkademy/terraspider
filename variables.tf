variable regions {
  type        = list
  default     = ["us-east-1", "us-east-2"]
  description = "Acceptable regions"
}

variable pri_cidrs {
  type        = list
  default     = ["10.10.10.0/26", "10.10.10.64/26"]
  description = "private cidrs"
}

variable pub_cidrs {
  type        = list
  default     = ["10.10.10.128/26", "10.10.10.192/26"]
  description = "public cidrs "
}

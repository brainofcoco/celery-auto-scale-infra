variable "deployment_mode" {
  type        = string
  description = "The deployment mode of the broker. Supported: SINGLE_INSTANCE and ACTIVE_STANDBY_MULTI_AZ"
  default     = "SINGLE_INSTANCE"
}

variable "engine_type" {
  type        = string
  description = "Type of broker engine, `ActiveMQ` or `RabbitMQ`"
  default     = "RabbitMQ"
}

variable "engine_version" {
  type        = string
  description = "The version of the broker engine. See https://docs.aws.amazon.com/amazon-mq/latest/developer-guide/broker-engine.html for more details"
  default     = "3.9.16"
}

variable "host_instance_type" {
  type        = string
  description = "The broker's instance type. e.g. mq.t2.micro or mq.m4.large"
  default     = "mq.t3.micro"
}

variable "general_log_enabled" {
  type        = bool
  description = "Enables general logging via CloudWatch"
  default     = true
}

# will change this to [true] during production
variable "publicly_accessible" {
  type = bool
  description = "Whether to enable connections from application outside of the VPC that hosts the broker's subnets"
  default = true
}

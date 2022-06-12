variable "prefix" {
  default = "celery_auto_scale"
}

variable "common_tags" {
  type = map(string)
  default = {
    "env" = "celery_auto_scale"
  }
}

variable "handler" {
  default = "main.lambda_handler"
}

variable "runtime" {
  default = "python3.6"
}

variable "kms_arn" {
  default = "arn:aws:kms:us-west-2:059260351090:key/1d09e183-e664-4dc9-ac33-7d5f5a7c7d75"
}

variable "vpc_id" {
  default = "vpc-069a39fd1a41470db"
}

variable "private_subnet_ids" {
  type = list(string)
  description = "Subnet ID for network interface"
  default = [ "subnet-0d791cf9a3780b9e3" ]
}

variable "secrets" {
  type = map(string)
  default = {
    "RABBITMQ_HOST" = "amqps://b-b7ffcf13-28f3-44fc-bd59-341cee371087.mq.us-west-2.amazonaws.com:5671",
    "RABBITMQ_PORT" = "5671",
    "RABBITMQ_USER" = "admin",
    "RABBITMQ_PASS" = "BrainOfCoco123@"
    # AWS_REGION is a reserved key
  }
}

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
  default = "arn:aws:kms:us-west-2:059260351090:key/mrk-c55602098de84927abc9ea9ce20ff3a8"
}

variable "vpc_id" {
  default = "vpc-0873797c4094b5221"
}

variable "private_subnet_ids" {
  type = list(string)
  description = "Subnet ID for network interface"
  default = [ "subnet-0ba7509dbc6794125", "subnet-0bbc7532bad769d2c" ]
}

variable "secrets" {
  type = map(string)
  default = {
    "RABBITMQ_HOST" = "b-b7ffcf13-28f3-44fc-bd59-341cee371087.mq.us-west-2.amazonaws.com",
    "RABBITMQ_PORT" = "5671",
    "RABBITMQ_USER" = "admin",
    "RABBITMQ_PASS" = "admin"
    # AWS_REGION is a reserved key
  }
}

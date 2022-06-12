variable "medium_worker" {
  type = map(string)
  default = {
    "minimum_count" = 1
    "maximum_count" = 4
    "desired_count_scale_step_1" = 1
    "desired_count_scale_step_2" = 2
    "desired_count_scale_step_3" = 3
  }
}

variable "ecs_cluster" {
  type = map(string)
  default = {
    "name" = "celeryautoscale"
    "service_name" = "celery-ecs-service"
  }
}
variable "common_tags" {
  type = map(string)
  default = {
    "env" = "celery_auto_scale"
  }
}

variable "prefix" {
  default = "celery_auto_scale"
}

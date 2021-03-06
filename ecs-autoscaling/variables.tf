variable "medium_worker" {
  type = map(string)
  default = {
    "minimum_count" = 2
    "maximum_count" = 10
    "desired_count_scale_step_1" = 2
    "desired_count_scale_step_2" = 5
    "desired_count_scale_step_3" = 10
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

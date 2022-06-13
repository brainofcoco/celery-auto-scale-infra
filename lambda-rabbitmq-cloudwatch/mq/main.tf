resource "aws_mq_broker" "default" {
  broker_name = "rabbitmq_celery_queue"

  engine_type = var.engine_type
  deployment_mode = var.deployment_mode
  engine_version = var.engine_version
  host_instance_type = var.host_instance_type
  publicly_accessible = var

  user {
    username = "admin"
    password = "admin123333@"
  }

  logs {
    general = var.general_log_enabled
  }
}

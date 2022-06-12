output "broker_id" {
  value       = join("", aws_mq_broker.default.*.id)
  description = "AmazonMQ broker ID"
}

output "broker_arn" {
  value       = join("", aws_mq_broker.default.*.arn)
  description = "AmazonMQ broker ARN"
}

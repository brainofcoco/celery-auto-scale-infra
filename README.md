# terraform-autoscale-celery-rabbitmq
Base repo with Terraform code for autoscaling Celery workers on ECS Fargate based on RabbitMQ metrics using a Lambda function and CloudWatch.

# start (request in lambda function layer)
- Step 1: Create Python Virtual Environment
python3 -m venv test_venv

- source test_venv/bin/activate

- python --version

- mkdir python

- pip install requests -t python

- zip -r requests.zip python

https://www.gcptutorials.com/article/how-to-use-requests-module-in-aws-lambda

# done

- deactivate
- rm -r test_venv
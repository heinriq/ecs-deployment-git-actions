[
  {
    "name": "ruby-app",
    "image": "${app_image}:${tag}",
    "cpu": ${fargate_cpu},
    "memory": ${fargate_memory},
    "networkMode": "awsvpc",
    "secrets": [
      {
        "valueFrom": "arn:aws:ssm:us-east-2:753354546523:parameter/ACCESS_KEY_ID",
        "name": "AWS_ACCESS_KEY_ID"
      },
      {
        "valueFrom": "arn:aws:ssm:us-east-2:753354546523:parameter/SECRET_ACCESS_KEY",
        "name": "AWS_SECRET_ACCESS_KEY"
      }
    ],
    "logConfiguration": {
        "logDriver": "awslogs",
        "options": {
          "awslogs-group": "/ecs/ruby-app",
          "awslogs-region": "${aws_region}",
          "awslogs-stream-prefix": "ecs"
        }
    },
    "portMappings": [
      {
        "containerPort": ${app_port},
        "hostPort": ${app_port}
      }
    ]
  }
]
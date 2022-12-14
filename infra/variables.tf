variable "region" {
    default = "us-east-1"
}

variable "repository" {
  description = "Repository name"
  default = "ecr-repository"
}

variable "ecs_task_execution_role_name" {
  description = "ECS task execution role name"
  default = "EcsTaskExecutionRole"
}

variable "ecs_auto_scale_role_name" {
  description = "ECS auto scale role Name"
  default = "myEcsAutoScaleRole"
}

variable "bucket_name" {
  default = "data-application-bucket-heinriq"
}

variable "app_port" {
  description = "Port exposed by the docker image to redirect traffic to"
  default     = 8080
}

variable "az_count" {
  description = "Number of AZs to cover in a given region"
  default     = "2"
}

variable "health_check_path" {
  default = "/"
}

variable "fargate_cpu" {
  description = "Fargate instance CPU units to provision (1 vCPU = 1024 CPU units)"
  default     = "1024"
}

variable "fargate_memory" {
  description = "Fargate instance memory to provision (in MiB)"
  default     = "2048"
}

variable "app_count" {
  description = "Number of docker containers to run"
  default     = 2
}

variable "AWS_ACCESS_KEY_ID" {
  type = string
}


variable "AWS_ACCESS_KEY_SECRET" {
  type = string
}


variable "name" {
}

variable "tag" {
}
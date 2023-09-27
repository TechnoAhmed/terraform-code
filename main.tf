provider "aws" {
  region = "us-west-1" # Set your desired AWS region here
}

resource "aws_ecs_cluster" "example_cluster" {
  name = "cluster-fargate"
}

resource "aws_ecs_task_definition" "example_task" {
family                   = "example-task"
network_mode             = "awsvpc" # Use awsvpc network mode for Fargate

 execution_role_arn = "arn:aws:iam::318988877498:role/ecsTaskExecutionRole" # Specify the ECS task execution role ARN

  requires_compatibilities = ["FARGATE"]
  cpu                      = "256" # Set your desired CPU units
  memory                   = "0.5GB" # Set your desired memory

  container_definitions = jsonencode([
    {
      name  = "example-container"
      image = "nginx:latest" # Set your desired Docker image here
      portMappings = [
        {
          containerPort = 80
          hostPort      = 80
        }
      ]
    }
    # Add more container definitions as needed
  ])
}

resource "aws_ecs_service" "example_service" {
  name            = "example-service"
  cluster         = aws_ecs_cluster.example_cluster.id
  task_definition = aws_ecs_task_definition.example_task.arn
  launch_type     = "FARGATE"
  desired_count   = 1
 # role            = aws_iam_role.ecs_service_role.name # Make sure this points to the correct role

  network_configuration {
    subnets = ["subnet-02bd91d4f14332a2a"] # Specify your subnet IDs
  #  assign_public_ip = "ENABLED"
  }
 load_balancer {
   target_group_arn = "" # Specify your target group ARN
    container_name   = "example-container"
    container_port   = 80
  }
}



region = "us-west-1"

# vpc:

vpc_cidr_block       = "10.0.0.0/16"
vpc_instance_tenancy = "default"
vpc_name             = "Terra-VPC"


# pub_subnets:

availability_zone_1 = "us-west-1a"
pub_subnet1_cidr    = "10.0.1.0/24"
pub_subnet1_name    = "Terra-pub1-Subnet"

availability_zone_2 = "us-west-1b"
pub_subnet2_cidr    = "10.0.3.0/24"
pub_subnet2_name    = "Terra-pub2-Subnet"

# priv_subnets:

availability_zone_3 = "us-west-1a"
priv_subnet1_cidr   = "10.0.2.0/24"
priv_subnet1_name   = "Terra-priv1-Subnet"

availability_zone_4 = "us-west-1b"
priv_subnet2_cidr   = "10.0.4.0/24"
priv_subnet2_name   = "Terra-priv2-Subnet"

# pub_route_table:

pub_route_table_name = "Terra-pub-route"


# priv_route_table:

priv_route_table_name = "Terra-priv-route"


# public instance:

#pub_instance_ami      = "ami-024e6efaf93d85776"
#pub_instance_type     = "t2.micro"
#pub_instance_key_name = "service-key"
#pub_instance_name     = "Terra-pub-ec2"


# private instance:

#priv_instance_ami      = "ami-024e6efaf93d85776"
#priv_instance_type     = "t2.micro"
#priv_instance_key_name = "service-key"
#priv_instance_name     = "Terra-priv-ec2"

#Ecs Cluster------------------
# ECS Cluster Variables
ecs_cluster_name = "timesgroup-cluster"
instance_type    = "t3.medium"
desired_capacity = 2
max_size         = 4
min_size         = 1
key_name         = "ahmed10"
subnet_ids       = ["subnet-0e4f2a0a3da922c90", "subnet-02ad83f5e4d11669c"]
vpc_id           = "vpc-07a57e71cfa06ccae"

# ECS Task Definition Variables
#task_family      = "my-task-family"
#container_name   = "my-container"
#container_image  = "nginx:latest"
#container_port   = 80

# ECS Service Variables
#service_name     = "my-ecs-service"
#desired_count    = 2
#launch_type      = "EC2"


# Use Terragrunt to download the module code
terraform {
  // source = "git::git@github.com:gruntwork-io/terragrunt-infrastructure-modules-example.git//path/to/module?ref=v0.0.1"
  source = "../../../../asg_elb_service"
}

# Fill in the variables for that module
inputs = {
  aws_region = "us-east-1"
  name = "Test-ASG"
  instance_type = "t2.micro"
  min_size = 1
  max_size = 2
  server_port = 80
  elb_port = 80
}
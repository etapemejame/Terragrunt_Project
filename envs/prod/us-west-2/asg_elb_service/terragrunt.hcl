# Use Terragrunt to download the module code
terraform {
  // source = "git::git@github.com:gruntwork-io/terragrunt-infrastructure-modules-example.git//path/to/module?ref=v0.0.1"
  source = "../../../../asg_elb_service"
}

# Fill in the variables for that module
inputs = {
  aws_region = "us-west-2"
  name = "Test-ASG"
  instance_type = ""
  min_size = 1
  mix_size = 3
  server_port = 80
  elb_port = 80
}
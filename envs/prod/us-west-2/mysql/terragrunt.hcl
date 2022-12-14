terraform {
  // source = "git::git@github.com:gruntwork-io/terragrunt-infrastructure-modules-example.git//path/to/module?ref=v0.0.1"
  source = "../../../../mysql"
}

# Fill in the variables for that module
inputs = {
  aws_region = "us-west-2"
  db_name = "prod_db"
  instance_class = "db.t2.micro"
  allocated_storage = 40
  storage_type = "gp2"
  master_username = "dbuser"
  master_password = "ILovemyhome2022"
}
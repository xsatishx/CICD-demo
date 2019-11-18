provider "aws" {
  region = "us-east-1"
}

module "ec2-instance" {
  //https://registry.terraform.io/modules/terraform-aws-modules/ec2-instance/aws/1.19.0
  source                 = "github.com/xsatishx/terraform/Modules/EC2"
  user_data              = "apt-get update && apt-get install git && curl -L https://www.opscode.com/chef/install.sh | bash"

  }
  
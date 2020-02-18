/*
this file containns the following detais about the the code
1>two tire application
2> Stateless Appliocation
3>Remote provisions
4>mapping regions


....................................................................................................
Create a template for running a simple two-tier architecture on Amazon Web services. 
The premise is that you have stateless app servers running behind an ELB serving traffic.
*/

//RESOURCES compute file
resource "aws_instance" "webserver_stateless" {
//Amazon machine image
    ami = "${lookup(var.webserver_amis.var.aws_region)}"
 instance_type = "t2.micro"
 }


#VARIBELS for authentication
variable "aws_access_key" {  
}
variable "aws_secret_key" {
  }
variable "aws_region" {
  default = "xxxxxxxx"
}
//stateless webserver varible
variable "webserver_amis" {
    type = "map"
  
}
#remortprovisions
{
    varibels = "aws_cli-inir"
    {
        "inline" = "value"
        "inist" = "value2"
    }
}

#PROVIDER 
provider "aws" {
 access_key = "${var.aws_access_key}"
 secret_key = "${var.aws_secret_key}"
 region = "${var.aws_region}"
} 

webserver_amis{
    //images based on the servers os
    "us-east-1" = "xxxxxxx"
    "us-west-1" = "xxxxxxx"
    "us-south-1" ="xxxxxxx"
    "eu-south-1" = "xxxxxxx" 
}

//$ export TF_VAR_aws_access_key=”YOUR_ACCESS_KEY”



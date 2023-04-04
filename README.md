# Introduction to Terraform AWS Jenkins Instance Provisioning

This is a Terraform configuration that provisions an AWS EC2 instance running Jenkins, a popular automation server. The configuration also creates a security group to control access to the instance, an S3 bucket to store Jenkins data, and an S3 bucket ACL to manage the access control list for the bucket.

### Terraform Resources Used

This code snippet uses the following AWS resources:

* aws_instance: Defines the EC2 instance running Jenkins

* aws_security_group: Defines a security group for the instance, allowing inbound traffic to ports 22 (SSH), 80 (HTTP), and 8080 (Jenkins)

* aws_s3_bucket: Defines an S3 bucket for use with the Jenkins instance

* aws_s3_bucket_acl: Sets the access control list (ACL) for the S3 bucket to "private"


### Usage

* To use this Terraform code snippet, you will need to define the following variables:

`* ami_id:` The ID of the Amazon Machine Image (AMI) to use for the Jenkins instance

instance_type: The type of EC2 instance to use (e.g. t2.micro)

vpc_id: The ID of the VPC where the instance will be launched

cidr_my: The CIDR block to allow inbound traffic from your local machine

cidr_open: The CIDR block to allow inbound traffic from anywhere (e.g. 0.0.0.0/0)

s3_bucket: The name of the S3 bucket to create for use with the Jenkins instance

Once you have defined these variables, you can run the terraform apply command to provision the Jenkins instance and associated resources in your AWS account.

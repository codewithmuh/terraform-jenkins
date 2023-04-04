provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "jenkins" {

  ami                    = var.ami_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.jenkins-sg.id]
  user_data              = file("jenkins.sh")

  tags = {
    Name = "Jenkins_Instance"
  }
}

resource "aws_security_group" "jenkins-sg" {

  name        = "jenkins-sg"
  description = "Allow traffic"
  vpc_id      = var.vpc_id

  ingress {

    description = "allow traffic"
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = [var.cidr_open]

  }
  ingress {
    description = "http"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = [var.cidr_open]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.cidr_my]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.cidr_open]
  }

  tags = {
    Name = "jenkins-sg"
  }

}

resource "aws_s3_bucket" "jenkinsbucket" {
  bucket = var.s3_bucket
}

resource "aws_s3_bucket_acl" "jenkinsbucket_acl" {
  bucket = var.s3_bucket
  acl    = "private"
}

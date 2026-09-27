terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

provider "local" {
}

resource "local_file" "devops_test" {
  filename = "${path.module}/terraform-created.txt"

  content = <<EOF
DevOps Virtual Lab Experiment 5

Terraform execution successful.

This file was created automatically using Terraform.
EOF
}
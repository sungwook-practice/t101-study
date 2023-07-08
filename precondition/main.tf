terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "2.4.0"
    }
  }

  required_version = ">= 1.4"
}

resource "local_file" "demo" {
  content  = "hi. how are you?"
  filename = var.file_name

  lifecycle {
    precondition {
      condition = var.file_name == "helloworld.txt"
      error_message = "filename is not helloworld.txt"
    }
  }
}
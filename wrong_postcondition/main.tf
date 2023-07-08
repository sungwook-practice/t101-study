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
    postcondition {
      condition = self.content_base64sha256 == "1111"
      error_message = "content is not 1111"
    }
  }
}
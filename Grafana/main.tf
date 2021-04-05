provider "grafana" {
  url = var.grafana_url
  auth = var.grafana_api_key
  org_id = 1
  version = "~> 1.8"
}

terraform {
  backend "s3" {
    bucket = "terraform-jason"
    ###dynamodb_table = "dynamodb-terraform-state-lock"
    key    = "terraform-grafana.tfstate"
    region = "us-east-1"
    encrypt = true
  }
}

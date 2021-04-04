variable "grafana_url" {
  default = "http://54.209.123.216:3000/"
}

variable "grafana_api_key" {
  default = "eyJrIjoiVFBOVGtoV3pKSXIwbEE0OVEzTmRSdW4yN1pPV04xVEkiLCJuIjoiVGVycmFmb3JtIiwiaWQiOjF9"
}

variable "grafana_access_key" {
  default = "$AWS_ACCESS_KEY_ID"
}

variable "grafana_secret_key" {
  default = "$AWS_SECRET_ACCESS_KEY"
}

variable "region" {
  default = "us-east-1"
}


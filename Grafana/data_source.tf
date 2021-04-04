resource "grafana_data_source" "Metrics" {
  type = "cloudwatch"
  name = "Metrics"

  json_data {
    default_region   = var.region
    auth_type = "keys"
  }

  secure_json_data {
    access_key = var.grafana_access_key
    secret_key = var.grafana_secret_key
  }
}



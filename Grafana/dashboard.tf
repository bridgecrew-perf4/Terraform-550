resource "grafana_dashboard" "cloudwatch" {
  config_json = file("dashboards/aws-billing.json")
  depends_on = [grafana_data_source.Metrics]
}

resource "grafana_dashboard" "ec2" {
  config_json = file("dashboards/ec2.json")
  depends_on = [grafana_data_source.Metrics]
}


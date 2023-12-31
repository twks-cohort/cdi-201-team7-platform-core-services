{
    "org_name": "andrewferrell",
    "cluster_name": "prod-us-east-2",
    "team_name": "team7",
    "stack_url": "https://team07201stack.grafana.net",
    "stack_management_token": "{{ op://cohorts/team07-201-svc-grafana/team07201stack_management_sa_key }}",
    "prometheus_endpoint": "{{ op://cohorts/team7-201-platform-vcluster/prometheus_endpoint }}",
    "prometheus_password": "{{ op://cohorts/team7-201-platform-vcluster/prometheus_password }}",
    "node_exporter_port": "9107",
    "metrics_server_version": "v0.6.3",
    "prometheus_version": "v2.42.0",
    "grafana_agent_version": "v0.33.1",
    "alert_channel": "prod"
}

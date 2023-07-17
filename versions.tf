terraform {
  required_version = "~> 1.2"
  required_providers {
    grafana = {
      source  = "grafana/grafana"
      version = "~> 1.39"
    }
  }

  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "twks-cohort"
    workspaces {
      prefix = "team7-201-platform-core-services-"
    }
  }
}

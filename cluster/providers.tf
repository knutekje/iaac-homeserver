terraform {
  required_version = ">=1.6.0"

  required_providers {
    kubernetes = {
      source  = "opentofu/kubernetes"
      version = "3.0.1"
    }
    helm = {
      source  = "opentofu/helm"
      version = "3.1.1"
    }
    postgresql = {
      source  = "jbg/postgresql"
      version = "1.19.0"
    }
    keycloak = {
      source  = "keycloak/keycloak"
      version = "5.7.0"
    }
  }
}

provider "helm" {
  # Configuration options
}



provider "kubernetes" {
  config_path    = var.kubeconfig
  config_context = var.context
}



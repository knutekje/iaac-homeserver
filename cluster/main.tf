resource "kubernetes_namespace" "ns" {
  for_each = toset(["monitoring", "nginx-fabric"])
  metadata {
    name = each.value
  }
}

locals {
  chart_versions = {
    nginx-fabric = "2.4.2"
  }
  image_versions = {

  }
  ports = {

  }
}

module "nginx-fabric" {
  source        = "../services/nginx-fabric"
  namespace     = kubernetes_namespace.ns["monitoring"].metadata[0].name
  chart_name    = "nginx-fabric"
  chart_version = local.chart_versions["nginx-fabric"]

}

resource "helm_release" "nginx-gateway-fabric" {
  name             = "ngf"
  repository = "oci://ghcr.io/nginx/charts"
  chart      = "nginx-gateway-fabric"
  namespace        = var.namespace
  version    = "2.5.0"
  wait             = false
}

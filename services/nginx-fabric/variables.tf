variable "namespace" {
  type        = string
  description = "service namespace"
}

variable "chart_name" {
  type        = string
  description = "helm chart name"
}

variable "chart_version" {
  type        = string
  description = "chart version"
}

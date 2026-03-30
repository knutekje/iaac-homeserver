variable "cluster_ip" {
  description = "ip of the cluster"
  type        = string
}
variable "kubeconfig" {
  description = "path to kubeconfi"
  type        = string
}

variable "context" {
  description = "k8s context"
  type        = string
}

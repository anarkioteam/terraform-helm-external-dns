variable "helm_external_dns_namespace" {
  description = "Namespace to release ExternalDNS into"
  type        = string
  default     = "external-dns"
}

variable "helm_external_dns_chart_version" {
  description = "Helm chart version to use for ExternalDNS"
  type        = string
  default     = ""
}

variable "eks_iam_external_dns_role_name" {
  description = "IAM EKS service account role name for ExternalDNS"
  type        = string
}

variable "external_dns_namespace" {
  description = "Namespace to release ExternalDNS into"
  type        = string
  default     = "external-dns"
}

variable "external_dns_helm_chart_version" {
  description = "Helm chart version to use for ExternalDNS"
  type        = string
  default     = ""
}

variable "external_dns_eks_iam_role_arn" {
  description = "IAM service account role arn for ExternalDNS"
  type        = string
}

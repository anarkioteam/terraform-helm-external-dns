data "aws_region" "current" {}

data "aws_iam_role" "external_dns" {
  name = var.eks_iam_external_dns_role_name
}

data "helm_repository" "bitnami" {
  name = "bitnami"
  url  = "https://charts.bitnami.com/bitnami"
}

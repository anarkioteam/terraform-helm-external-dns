resource "helm_release" "external_dns" {
  name       = "external-dns"
  repository = data.helm_repository.bitnami.metadata[0].name
  chart      = "external-dns"
  namespace  = var.external_dns_namespace
  version    = var.external_dns_helm_chart_version == "" ? null : var.external_dns_helm_chart_version

  values = [
    templatefile(
      "${path.module}/templates/values.yaml.tpl",
      {
        "aws_region"                    = data.aws_region.current
        "external_dns_eks_iam_role_arn" = var.external_dns_eks_iam_role_arn
      }
    )
  ]
}

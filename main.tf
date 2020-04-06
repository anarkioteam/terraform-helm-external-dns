resource "helm_release" "external_dns" {
  name       = "external-dns"
  repository = data.helm_repository.bitnami.metadata[0].name
  chart      = "external-dns"
  namespace  = var.helm_external_dns_namespace
  version    = var.helm_external_dns_chart_version == "" ? null : var.helm_external_dns_chart_version

  values = [
    templatefile(
      "${path.module}/templates/values.yaml.tpl",
      {
        "aws_region"                    = data.aws_region.current.name
        "eks_iam_external_dns_role_arn" = data.aws_iam_role.external_dns.arn
      }
    )
  ]
}

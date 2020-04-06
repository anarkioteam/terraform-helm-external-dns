# terraform-helm-external-dns

A Terraform module for deploying [ExternalDNS](https://github.com/kubernetes-sigs/external-dns) via Helm.

## Requirements

| Name      | Version   |
| --------- | --------- |
| terraform | ~> 0.12.0 |
| aws       | ~> 2.56   |
| helm      | ~> 1.1    |
| template  | ~> 2.1    |

## Providers

| Name | Version |
| ---- | ------- |
| aws  | ~> 2.56 |
| helm | ~> 1.1  |

## Inputs

| Name                            | Description                                       | Type     | Default          | Required |
| ------------------------------- | ------------------------------------------------- | -------- | ---------------- | :------: |
| eks_iam_external_dns_role_name  | IAM EKS service account role name for ExternalDNS | `string` | n/a              |   yes    |
| helm_external_dns_chart_version | Helm chart version to use for ExternalDNS         | `string` | `""`             |    no    |
| helm_external_dns_namespace     | Namespace to release ExternalDNS into             | `string` | `"external-dns"` |    no    |

## Outputs

No output.

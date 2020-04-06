# terraform-helm-external-dns

A Terraform module for deploying [external-dns](https://github.com/kubernetes-sigs/external-dns) via Helm.

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

| Name                            | Description                                   | Type     | Default          | Required |
| ------------------------------- | --------------------------------------------- | -------- | ---------------- | :------: |
| external_dns_helm_chart_version | Helm chart version to use for external-dns    | `string` | `""`             |    no    |
| external_dns_namespace          | Namespace to release external-dns into        | `string` | `"external-dns"` |    no    |
| external_dns_eks_iam_role_arn   | IAM service account role arn for external-dns | `string` | n/a              |   yes    |

## Outputs

No output.

aws:
  region: ${ aws_region }

rbac:
  serviceAccountAnnotations:
    eks.amazonaws.com/role-arn: ${ external_dns_eks_iam_role_arn }

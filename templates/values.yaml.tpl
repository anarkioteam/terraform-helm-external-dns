aws:
  region: ${ aws_region }

rbac:
  serviceAccountAnnotations:
    eks.amazonaws.com/role-arn: ${ eks_iam_external_dns_role_arn }

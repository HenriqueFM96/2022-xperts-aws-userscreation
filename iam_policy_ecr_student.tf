resource "aws_iam_policy" "ecr_stdt" {
  name        = "ecr_stdt"
  path        = "/"
  description = "ECR Policy for Students"
 
 policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "VisualEditor0",
            "Effect": "Allow",
            "Action": [
                "ecr:DescribeImages",
                "ecr:DescribeRepositories",
                "ecr:ListImages",
                "ecr:GetRepositoryPolicy"
            ],
            "Resource": "arn:aws:ecr:*:642171440217:repository/*"
        },
        {
            "Sid": "VisualEditor1",
            "Effect": "Allow",
            "Action": [
                "ecr:GetRegistryPolicy",
                "ecr:DescribeRegistry",
                "ecr:DescribePullThroughCacheRules",
                "ecr:GetAuthorizationToken",
                "ecr:GetRegistryScanningConfiguration"
            ],
            "Resource": "*"
        }
    ]
}
EOF
}
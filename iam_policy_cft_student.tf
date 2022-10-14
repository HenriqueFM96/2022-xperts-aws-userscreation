resource "aws_iam_policy" "cft_stdt" {
  name        = "cft_stdt"
  path        = "/"
  description = "Cloud Formation Policy for Students"
 
 policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "VisualEditor0",
            "Effect": "Allow",
            "Action": [
                "cloudformation:SetStackPolicy",
                "cloudformation:DeleteStackInstances",
                "cloudformation:CancelUpdateStack",
                "cloudformation:UpdateStackInstances",
                "cloudformation:ListStackSetOperations",
                "cloudformation:DescribeStackResource",
                "cloudformation:UpdateStackSet",
                "cloudformation:CreateChangeSet",
                "cloudformation:DeleteStackSet",
                "cloudformation:CreateStackInstances",
                "cloudformation:DescribeStacks",
                "cloudformation:ContinueUpdateRollback",
                "cloudformation:ListStackSetOperationResults",
                "cloudformation:RollbackStack",
                "cloudformation:GetStackPolicy",
                "cloudformation:DescribeStackSet",
                "cloudformation:CreateStack",
                "cloudformation:GetTemplate",
                "cloudformation:DeleteStack",
                "cloudformation:TagResource",
                "cloudformation:UpdateStack",
                "cloudformation:UntagResource",
                "cloudformation:ListStackResources"
            ],
            "Resource": [
                "arn:aws:cloudformation:*:642171440217:stack/*/*",
                "arn:aws:cloudformation:*:642171440217:stackset/*:*"
            ]
        },
        {
            "Sid": "VisualEditor1",
            "Effect": "Allow",
            "Action": [
                "cloudformation:RegisterType",
                "cloudformation:ListStacks",
                "cloudformation:DescribeType",
                "cloudformation:PublishType",
                "cloudformation:ListTypes",
                "cloudformation:DescribeAccountLimits",
                "cloudformation:CreateStackSet",
                "cloudformation:ValidateTemplate"
            ],
            "Resource": "*"
        }
    ]
}
EOF
}
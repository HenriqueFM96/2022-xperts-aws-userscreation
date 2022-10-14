resource "aws_iam_policy" "marketplace_stdt" {
  name        = "marketplace_stdt"
  path        = "/"
  description = "Marketplace Policy for Students"
 
 policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "VisualEditor0",
            "Effect": "Allow",
            "Action": [
                "aws-marketplace:ViewSubscriptions",
                "aws-marketplace:GetAgreementTerms",
                "aws-marketplace:AcceptAgreementApprovalRequest",
                "aws-marketplace:SearchAgreements",
                "aws-marketplace:AcceptAgreementRequest",
                "aws-marketplace:DescribeAgreement",
                "aws-marketplace:Subscribe",
                "aws-marketplace:ListAgreementApprovalRequests",
                "aws-marketplace:GetAgreementRequest",
                "aws-marketplace:UpdateAgreementApprovalRequest",
                "aws-marketplace:GetAgreementApprovalRequest",
                "aws-marketplace:ListAgreementRequests"
            ],
            "Resource": "*"
        }
    ]
}
EOF
}
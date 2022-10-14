#TF File to set groups availables in the Organization
#Students permissions
resource "aws_iam_group" "stdts_all" {
  name = "stdts_all"
}

# Define users to be part of group name stdts_all 
resource "aws_iam_group_membership" "stdts_membership" {
  name = "tf-stdts-group-membership"
  users = aws_iam_user.stdts-accounts[*].name
  
  group = aws_iam_group.stdts_all.name
}

# Define CFT policy to be attached on group stdts_all
resource "aws_iam_group_policy_attachment" "stdts-cft-policies" {
  group      = aws_iam_group.stdts_all.name
  policy_arn = aws_iam_policy.cft_stdt.arn
}

# Define EC2 policy to be attached on group stdts_all
resource "aws_iam_group_policy_attachment" "stdts-ec2-policies" {
  group      = aws_iam_group.stdts_all.name
  policy_arn = aws_iam_policy.ec2_stdt.arn
}

# Define ECR policy to be attached on group stdts_all
resource "aws_iam_group_policy_attachment" "stdts-ecr-policies" {
  group      = aws_iam_group.stdts_all.name
  policy_arn = aws_iam_policy.ecr_stdt.arn
}

# Define EKS policy to be attached on group stdts_all
resource "aws_iam_group_policy_attachment" "stdts-eks-policies" {
  group      = aws_iam_group.stdts_all.name
  policy_arn = aws_iam_policy.eks_stdt.arn
}

# Define MarketPlace policy to be attached on group stdts_all
resource "aws_iam_group_policy_attachment" "stdts-marketplace-policies" {
  group      = aws_iam_group.stdts_all.name
  policy_arn = aws_iam_policy.marketplace_stdt.arn
}

# Define Route53 policy to be attached on group stdts_all
resource "aws_iam_group_policy_attachment" "stdts-route53-policies" {
  group      = aws_iam_group.stdts_all.name
  policy_arn = aws_iam_policy.route53_stdt.arn
}

# Define S3 policy to be attached on group stdts_all
resource "aws_iam_group_policy_attachment" "stdts-s3-policies" {
  group      = aws_iam_group.stdts_all.name
  policy_arn = aws_iam_policy.s3_stdt.arn
}

## Setting up the admin group account with desired permissions
resource "aws_iam_group" "xperts-admins" {
  name = "xperts-admins"
}

resource "aws_iam_group_policy_attachment" "xperts-policies" {
  group      = aws_iam_group.xperts-admins.name
  policy_arn = "arn:aws:iam::aws:policy/job-function/SystemAdministrator"
}
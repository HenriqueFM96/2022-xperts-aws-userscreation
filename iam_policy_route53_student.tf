resource "aws_iam_policy" "route53_stdt" {
  name        = "route53_stdt"
  path        = "/"
  description = "Route53 Policy for Students"
 
 policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "VisualEditor0",
            "Effect": "Allow",
            "Action": [
                "route53:DeleteTrafficPolicy",
                "route53:GetChange",
                "route53:ListTrafficPolicyVersions",
                "route53:GetHostedZone",
                "route53:GetHealthCheck",
                "route53:DeleteHealthCheck",
                "route53:UpdateHealthCheck",
                "route53:ListQueryLoggingConfigs",
                "route53:ListResourceRecordSets",
                "route53:GetTrafficPolicyInstance",
                "route53:UpdateHostedZoneComment",
                "route53:CreateTrafficPolicyVersion",
                "route53:UpdateTrafficPolicyComment",
                "route53:GetHealthCheckLastFailureReason",
                "route53:GetHealthCheckStatus",
                "route53:ListTrafficPolicyInstancesByHostedZone",
                "route53:ListVPCAssociationAuthorizations",
                "route53:ChangeResourceRecordSets",
                "route53:GetReusableDelegationSet",
                "route53:CreateVPCAssociationAuthorization",
                "route53:CreateTrafficPolicyInstance",
                "route53:ListTrafficPolicyInstancesByPolicy",
                "route53:ListCidrBlocks",
                "route53:ChangeTagsForResource",
                "route53:ListCidrLocations",
                "route53:GetTrafficPolicy"
            ],
            "Resource": [
                "arn:aws:route53:::hostedzone/*",
                "arn:aws:route53:::trafficpolicyinstance/*",
                "arn:aws:route53:::healthcheck/*",
                "arn:aws:route53:::change/*",
                "arn:aws:route53:::trafficpolicy/*",
                "arn:aws:route53:::cidrcollection/*",
                "arn:aws:route53:::delegationset/*"
            ]
        },
        {
            "Sid": "VisualEditor1",
            "Effect": "Allow",
            "Action": [
                "route53:CreateTrafficPolicy",
                "route53:ListHostedZones",
                "route53:ListHostedZonesByName",
                "route53:GetCheckerIpRanges",
                "route53:ListHealthChecks",
                "route53:ListHostedZonesByVPC",
                "route53:CreateHealthCheck",
                "route53:ListTrafficPolicies",
                "route53:GetGeoLocation",
                "route53:ListGeoLocations",
                "route53:GetHostedZoneCount",
                "route53:ListCidrCollections",
                "route53:GetHealthCheckCount"
            ],
            "Resource": "*"
        },
        {
            "Sid": "VisualEditor2",
            "Effect": "Allow",
            "Action": "route53:DeleteTrafficPolicy",
            "Resource": "arn:aws:route53:::trafficpolicy/*"
        }
    ]
}
EOF
}
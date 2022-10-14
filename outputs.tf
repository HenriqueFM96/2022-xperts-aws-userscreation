output "users" {
    value = ["${aws_iam_user.stdts-accounts.*.name}"]
}

output "passwords" {
    #remove sensitive to allow password copy and paste
    sensitive = false
    value = ["${aws_iam_user_login_profile.stdts_login.*.password}"]
}
resource "aws_iam_user" "stdts-accounts" {
  count = 5
  name = "student${count.index}"
}

resource "aws_iam_user_login_profile" "stdts_login" {
    count = 5
    user = "student${count.index}"
    password_length = 10 
    password_reset_required = true
}

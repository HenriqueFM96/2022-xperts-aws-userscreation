resource "aws_iam_user" "stdts-accounts" {
  count = 2
  name = "student${count.index}"
}

resource "aws_iam_user_login_profile" "stdts_login" {
  count = 2
  user = "student${count.index}"
  password_length = 10 
  password_reset_required = true
}

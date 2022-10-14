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

resource "aws_identitystore_user" "students-users" {
  identity_store_id = tolist(data.aws_ssoadmin_instances.example.identity_store_ids)[0]

  count = 5
  display_name = "user-student-${count.index}"
  user_name    = "user-student-${count.index}"

  name {
    given_name  = "student-${count.index}"
    family_name = "user-${count.index}"
  }
}
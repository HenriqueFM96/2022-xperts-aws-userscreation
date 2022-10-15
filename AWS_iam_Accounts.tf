/*
resource "aws_iam_account_alias" "Account-00112233" {
  account_alias = file(account_alias.csv)
}
*/

resource "aws_account_alternate_contact" "operations" {
  alternate_contact_type = "Operations"
  name          = "Example"
  title         = "Example"
  email_address = "test@example.com"
  phone_number  = "+1234567890"
  account_id = "579722002509"
}
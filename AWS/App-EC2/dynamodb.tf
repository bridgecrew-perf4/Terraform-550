resource "aws_dynamodb_table" "dynamodb-terraform-state-lock" {
  name           = "dynamodb-terraform-state-lock"
  read_capacity  = 20
  write_capacity = 20
  hash_key       = "LockID"
  

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name = "Dynamodb Terraform State Lock Table"
  }
}
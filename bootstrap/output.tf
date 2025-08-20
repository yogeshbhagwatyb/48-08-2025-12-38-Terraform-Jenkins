output "state_bucket" {
  description = "S3 bucket name for remote state"
  value       = aws_s3_bucket.tf_state.bucket
}

output "lock_table" {
  description = "DynamoDB table name for locking"
  value       = aws_dynamodb_table.tf_lock.name
}

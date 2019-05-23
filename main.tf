data "archive_file" "empty_lambda_initialiser" {
  type        = "zip"
  output_path = "${path.module}/.terraform/empty_lambda_initialiser.zip"

  source {
    content  = "This is a dummy file to initialise a Lambda function."
    filename = "README.txt"
  }
}

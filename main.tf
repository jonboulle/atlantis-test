data "archive_file" "empty_lambda_initialiser" {
  type        = "zip"
  output_path = "${path.module}/.terraform/empty_lambda_initialiser.zip"

  source {
    content  = "This is a dummy zip file to initialise a Lambda function."
    filename = "README.txt"
  }
}

resource "null_resource" "test" {
  triggers = {
    zipfile = "${data.archive_file.empty_lambda_initialiser.output_base64sha256}"
  }
}

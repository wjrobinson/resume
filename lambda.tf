locals {
    lambda_zip_location = "outputs/dbcall.zip"
}

data "archive_file" "dbcall" {
  type        = "zip"
  source_file = "dbcall.py"
  output_path = "${local.lambda_zip_location}"
}

resource "aws_lambda_function" "lambda_func" {
  filename      = "${local.lambda_zip_location}"
  function_name = "dbcall"
  role          = "${aws_iam_role.lambda_role.arn}"
  handler       = "dbcall.lambda_handler"
  source_code_hash = "${filebase64sha256(local.lambda_zip_location)}"
  runtime = "python3.8"

}

# Merge lambda iam permissions into lambda file
resource "aws_iam_role_policy" "lambda_policy" {
    name = "lambda_policy"
    role = "${aws_iam_role.lambda_role.id}"

    policy = "${file("iam/lambda-policy.json")}"
}

resource "aws_iam_role" "lambda_role" {
    name = "lambda_role"
    assume_role_policy = "${file("iam/lambda-assume-policy.json")}"
}
data "aws_vpc" "main" {
  default = true
}

resource "aws_cloud9_environment_ec2" "cloud_9_env" {
  depends_on = ["aws_iam_user.student"]
  instance_type = var.instance_type
  name          = var.student_id
  owner_arn     = aws_iam_user.student.arn
}
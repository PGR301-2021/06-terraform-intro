module "students" {
  source          = "../seat"
  for_each        = var.students
  student_id      = each.key
  student_email   = each.value.email
  region          = var.region
}

output "urls" {
  value = { for student in keys(var.students) : student => module.students[student].cloud9_url }
}


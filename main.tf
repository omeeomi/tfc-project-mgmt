provider "tfe" {
  hostname = var.hostname # Optional, defaults to Terraform Cloud `app.terraform.io`
  token    = var.token
}

resource "tfe_project" "project" {
  organization = var.org_name
  for_each = var.project_name
  name = each.name
}

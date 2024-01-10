data "tfe_github_app_installation" "app" {
	installation_id = var.github_app_installation_id
}

module "project" {
  source  = "app.terraform.io/ryanff/project/tfe"
  version = "1.0.0"
  # insert required variables here

  for_each = local.project
  description = each.value.description
  name = each.key
  organization_name = each.value.organization_name
}


module "workspace" {
  source  = "app.terraform.io/ryanff/workspace/tfe"
  version = "1.0.0"
  # insert required variables here

  for_each = local.workspace
  name = each.key
  execution_mode = each.value.execution_mode
  description = each.value.description
  organization_name = each.value.organization_name
  project_id = module.project["firstproject"].id

  vcs_repo = {
    github_app_installation_id = data.tfe_github_app_installation.app.id
    identifier = each.value.vcs_repo_identifier
  }
}

moved {
  from = module.project["secondproject"]
  to = module.project["firstproject"]
}
locals {
    project = {
            "firstproject" = {
            description = "firstdescription"
            organization_name = var.organization_name
        }

    }

    workspace = {
            "firstworkspace" = {
                description = "firstworkspace"
                organization_name = var.organization_name
                execution_mode = "remote"
                project_id = module.project["firstproject"].id
                vcs_repo_identifier = "mkdirrepo/terraform-starter"
        }
      
    }
}
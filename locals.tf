locals {
    project = {
            "firstproject" = {
            description = "firstdescription"
            organization_name = var.organization_name
        }

    }

    workspace = {
        "firstspace"  = {
            execution_mode = "local"
            description = "firstspace"
            organization_name = var.organization_name
            project_id = module.project["firstproject"].id
            vcs_repo_identifier = "mkdirrepo/terraform-starter"
        }
      
    }
}
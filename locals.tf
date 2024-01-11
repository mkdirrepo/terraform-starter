locals {
    project = {
            "firstproject" = {
            description = "firstdescription"
            organization_name = var.organization_name
        }

    }

    workspace = {
        "firstspace"  = {
            execution_mode = "remote"
            description = "firstspace"
            organization_name = var.organization_name
            project_id = module.project["firstproject"].id
            vcs_repo_identifier = "${var.github_organization_name}/terraform-starter"
        }
        "terraform-github" = {
            description = "Automation workspace GitHub "
            execution_mode = "remote"
            project_id = module.project["firstproject"].id
            vcs_repo_identifier = "${var.github_organization_name}/terraform-github"
            organization_name = var.organization_name
    }
              "terraform-aws-networking" = {
            description = "Automation workspace GitHub "
            execution_mode = "remote"
            project_id = module.project["firstproject"].id
            vcs_repo_identifier = "${var.github_organization_name}/terraform-aws-networking"
            organization_name = var.organization_name
    }
    }


}
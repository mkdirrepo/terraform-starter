locals {
    project = {
            "firstproject" = {
            description = "firstdescription"
            organization_name = var.organization_name
        }
        "secondproject" = {
            description = "seconddescription"
            organization_name = var.organization_name
        }
        "thirdproject" = {
            description = "thirddescription"
            organization_name = var.organization_name
        }
    }

    workspace = {
            "firstworkspace" = {
            description = "firstworkspace"
            organization_name = var.organization_name
            execution_mode = "local"
            project_id = module.project["secondproject"].id
        }
        "secondworkspace" = {
            description = "secondworkspace"
            organization_name = var.organization_name
            execution_mode = "local"
            project_id = module.project["secondproject"].id
        }
            "thirdworkspace" = {
            description = "thirdworkspace"
            organization_name = var.organization_name
            execution_mode = "local"
            project_id = module.project["thirdproject"].id
        }
    }
}
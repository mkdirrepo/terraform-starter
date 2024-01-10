terraform {
  cloud {
    organization = "ryanff"

    workspaces {
      name = "firstworkspace"
    }
  }
}
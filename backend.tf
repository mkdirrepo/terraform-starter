terraform {
  cloud {
    organization = "ryanff"

    workspaces {
      name = "firstspace"
    }
  }
}
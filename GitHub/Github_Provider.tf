# Configure the DGitHub Provider
terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }

  }
}

# Configure the GitHub Provider
provider "github" {
  token = "Input your GitHub Token" # or `GITHUB_TOKEN`
}

resource "github_repository" "example" {
  name        = "Terraform_Udemi_Project"
  description = "My awesome codebase"

  visibility = "public"

}

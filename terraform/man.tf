
terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "5.44.0"
    }
  }
}

provider "github" {

}

resource "github_branch" "development" {
  repository = "github-practice"
  branch     = "sdks"

}
#export GH_TOKEN
#copy to main (repo and branch to create)
#terraform init | plan | apply --auto-approve
#copy git ignore for terraform from docs to .gitignore 
#run terraform destroy  --auto-approve to actions created by terraform
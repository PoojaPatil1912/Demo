resource "github_repository" "Demo" {
  name        = "Demo"
  description = "demo repoistory"
  auto_init   = true
  visibility  = "public"
}

resource "github_repository_file" "foo" {
  repository          = github_repository.Demo.name
  branch              = "release-2.0"
  file                = "Myfile2"
  content             = "hi"
  commit_message      = "Managed by Terraform"
  #commit_author       = "Terraform User"
  #commit_email        = "terraform@example.com"
  overwrite_on_create = false
}

resource "github_branch" "development" {
 repository = "Demo"
  branch     = "release-2.0"
}


  
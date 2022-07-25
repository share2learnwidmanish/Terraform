
# Configure the GitHub Provider
provider "github" {
  token = "abc_9defghijklmnopqrtuvwxyz"



resource "github_repository" "tf_github_example" {
  name        = "first_repo_with_tf"
  description = "create github repo using tf"
  visibility = "public"
  auto_init= "true"

}

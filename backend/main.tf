# TODO: Extract to tfvars
provider "google" {
  credentials = "${file("../creds/serviceaccount.json")}"
  project     = "iron-decorator-223723"
  region      = "us-east1"
}

# TODO: Figure out how to provision this bucket during init process (currently needs to be manually created)
resource "google_storage_bucket" "nerdsville-tf-state-dev" {
  name     = "nerdsville-tf-state-dev1"
  location = "US"
}

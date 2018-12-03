# TODO: Extract to tfvars
provider "google" {
  credentials = "${file("./creds/serviceaccount.json")}"
  project     = "iron-decorator-223723"
  region      = "us-east1"
}

terraform {
  backend "gcs" {
    bucket  = "nerdsville-tf-state-dev"
    prefix  = "terraform/state"
  }
}

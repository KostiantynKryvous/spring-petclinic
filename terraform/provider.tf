provider "google" {
  project = "fp-epam"
  region  = "europe-central2"
  zone    = "europe-central2-a"
  # credentials = file("/home/kostya/.ssh/fp-epam-bfdf0a8eea4b.json")
}

# кред нерабочий!
terraform {
  backend "gcs" {
    bucket = "fp-bucket-epam"
    prefix = "terraform/state"
    # credentials = file("/home/kostya/.ssh/fp-epam-bfdf0a8eea4b.json")
  }
}

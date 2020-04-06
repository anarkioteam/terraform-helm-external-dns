terraform {
  required_version = "~> 0.12.0"

  required_providers {
    aws        = "~> 2.56"
    helm       = "~> 1.1"
    kubernetes = "~> 1.11"
    template   = "~> 2.1"
  }
}

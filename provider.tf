terraform {
  required_providers {
    hyperfabric = {
      source = "CiscoDevNet/hyperfabric"
    }
  }
}

provider "hyperfabric" {
  # token = "<MY_HYPERFABRIC_TOKEN>"
  # retries = 2
  # label = "terraform"
  # proxy_url = "http://proxy.cisco.com"
  # proxy_creds = "username:password"
}

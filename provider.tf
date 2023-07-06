# Configure terraform
terraform {
  required_providers {
    newrelic = {
      source  = "newrelic/newrelic"
    }
  }
}

# Configure the New Relic provider
provider "newrelic" {
  account_id = "acount_ID"
  api_key = "Api_Key"    # Usually prefixed with 'NRAK'
  region = "US"                    # Valid regions are US and EU
}
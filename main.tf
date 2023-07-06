resource "newrelic_synthetics_monitor" "browser_monitor" {
  for_each         = var.data
  status           = "ENABLED"
  name             = each.value.name
  period           = "EVERY_6_HOURS"
  uri              = "https://www.one.newrelic.com"
  type             = "BROWSER"
  locations_public = [each.value.locations_public]

  enable_screenshot_on_failure_and_script = true
  validation_string                       = "success"
  verify_ssl                              = true

  tag {
    key    = "some_key"
    values = ["some_value"]
  }
}
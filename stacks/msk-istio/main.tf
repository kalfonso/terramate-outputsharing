locals {
  json_data = jsonencode(var.brokers)
}

resource "local_file" "msk_istio_config" {
  filename = "msk-istio.txt"
  content  = jsonencode(local.json_data)
}

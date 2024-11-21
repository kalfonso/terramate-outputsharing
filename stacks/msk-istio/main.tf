locals {
  json_data = jsondecode(file("msk.txt"))
}

resource "local_file" "msk_istio_config" {
  filename = "msk-istio.txt"
  content  = jsonencode(local.json_data)
}

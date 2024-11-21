# Now write this to a file (as a simplified example of an MSK resource)
locals {
  brokers = [
    for i in range(1, var.number_of_brokers + 1) : "broker${i}"
  ]
}

resource "local_file" "msk_cluster" {
  filename = "${path.module}/msk.txt"
  content  = jsonencode(local.brokers)
}
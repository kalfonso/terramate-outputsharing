# Now write this to a file (as a simplified example of an MSK resource)
locals {
  broker_configs = [
    for i in range(1, var.number_of_brokers + 1) : "broker${i}"
  ]
}

resource "local_file" "msk_cluster" {
  filename = "msk.txt"
  content  = jsonencode(local.broker_configs)
}
output "brokers" {
  backend   = "default"
  value     = local.brokers
  sensitive = false
}
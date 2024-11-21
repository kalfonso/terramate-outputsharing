output "brokers" {
  backend   = "local"
  value     = local.brokers
  sensitive = false
}
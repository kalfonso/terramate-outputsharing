input "brokers" {
  backend       = "local"
  from_stack_id = "msk"
  value         = outputs.brokers.value
}
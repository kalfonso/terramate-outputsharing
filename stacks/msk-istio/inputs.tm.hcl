input "brokers" {
  backend       = "default"
  from_stack_id = "msk"
  value         = outputs.brokers.value
}
input "brokers" {
  backend       = "default"
  from_stack_id = "stacks/msk"
  value         = outputs.brokers.value
}
input "brokers" {
  backend       = "default"
  from_stack_id = "4e237b4d-525c-4bb0-a87d-387e0a621995"
  value         = outputs.brokers.value
}
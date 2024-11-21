stack {
  name        = "msk-istio"
  description = "MSK Istio configuration stack"
  id          = "9389ff44-a5a0-4155-a0ac-f7205c52c2a2"
  tags = [
    "msk-istio",
  ]
  after = [
    "tag:msk",
  ]
  input "brokers" {
    backend       = "default"
    from_stack_id = "msk"
    value         = outputs.brokers.value
  }
}


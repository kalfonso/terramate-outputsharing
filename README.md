The purpose of this repo is for me to explore using Terramate to orchestrate related Terraform modules using stacks and
the new `output sharing` experimental feature.

Here I define two Terramate stacks (Terraform root modules) simulating an AWS MSK Kafka cluster. Another module -- to configure Istio traffic rules from a Kubernetes cluster to MSK -- uses the list of brokers from the MSK cluster. This is a simplified example that only focuses on using Terramate stacks, output sharing and scripts.

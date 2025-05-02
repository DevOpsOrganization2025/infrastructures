variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
}

variable "node_group_name" {
  description = "The name of the node group"
  type        = string
}

variable "cluster_iam_role_arn" {
  description = "The IAM role ARN for EKS control plane"
  type        = string
}

variable "node_iam_role_arn" {
  description = "The IAM role ARN for node group (EC2 workers)"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs to launch the EKS cluster into"
  type        = list(string)
}

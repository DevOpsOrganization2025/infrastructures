
module "eks" {
  source         = "git::https://github.com/DevOpsOrganization2025/infrastructures.git//terraform/modules/eks?ref=main"
  cluster_name   = "staging-cluster"
  node_group_name = "staging-node-group"
  cluster_iam_role_arn  = "arn:aws:iam::423623850991:role/eks-cluster-role"
  node_iam_role_arn    ="arn:aws:iam::423623850991:instance-profile/eks-node-group-role"
  subnet_ids     = ["subnet-0c5083fb2d9b4fde3", "subnet-01580f4c6102505e5", "subnet-0aa299ee0c0239bd5","subnet-08f279226bc434136"]
}

output "test_cluster_endpoint" {
  value = module.eks.cluster_endpoint
}

output "test_cluster_ca_data" {
  value = module.eks.cluster_ca_data
}


module "eks" {
  source         = "git::https://github.com/DevOpsOrganization2025/infrastructures.git//terraform/modules/eks?ref=main"
  cluster_name   = "prod-cluster"
  node_group_name = "prod-node-group"
  iam_role_arn   = "arn:aws:iam::423623850991:role/eks-cluster-role"
  node_iam_role_arn    ="arn:aws:iam::423623850991:instance-profile/eks-node-group-role"
  subnet_ids     = ["subnet-092523024474ab87b", "subnet-06c071380d47fc056", "subnet-076a759129dde5264","subnet-03f084a71a11254e7"]
}

output "test_cluster_endpoint" {
  value = module.eks.cluster_endpoint
}

output "test_cluster_ca_data" {
  value = module.eks.cluster_ca_data
}

module "eks" {
  source         = "../../../modules/eks"
  cluster_name   = "test-cluster"
  node_group_name = "test-node-group"
  iam_role_arn   = "arn:aws:iam::423623850991:role/eks-cluster-role"
  node_iam_role_arn    ="arn:aws:iam::423623850991:instance-profile/eks-node-group-role"
  subnet_ids     = ["subnet-057a15a690f42b12b", "subnet-0a6a1a04a69320d91", "subnet-092f3cb9cd7352383","subnet-0cc19f52319fac8f9"]
}

output "test_cluster_endpoint" {
  value = module.eks.cluster_endpoint
}

output "test_cluster_ca_data" {
  value = module.eks.cluster_ca_data
}


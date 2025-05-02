module "eks" {
  source         = "../../modules/eks"
  cluster_name   = "test-cluster"
  node_group_name = "test-node-group"
  iam_role_arn   = ""
  subnet_ids     = ["", "", ""]
}

output "test_cluster_endpoint" {
  value = module.eks.cluster_endpoint
}

output "test_cluster_ca_data" {
  value = module.eks.cluster_ca_data
}


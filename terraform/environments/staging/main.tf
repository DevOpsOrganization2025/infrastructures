module "eks" {
  source         = "../../modules/eks"
  cluster_name   = "staging-cluster"
  node_group_name = "staging-node-group"
  iam_role_arn   = ""
  subnet_ids     = ["", "", ""]
}

output "staging_cluster_endpoint" {
  value = module.eks.cluster_endpoint
}

output "staging_cluster_ca_data" {
  value = module.eks.cluster_ca_data
}


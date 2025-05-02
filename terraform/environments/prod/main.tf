module "eks" {
  source         = "../../modules/eks"
  cluster_name   = "prod-cluster"
  node_group_name = "prod-node-group"
  iam_role_arn   = ""
  subnet_ids     = ["", "", ""]
}

output "prod_cluster_endpoint" {
  value = module.eks.cluster_endpoint
}

output "prod_cluster_ca_data" {
  value = module.eks.cluster_ca_data
}


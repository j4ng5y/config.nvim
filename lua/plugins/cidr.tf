locals {
  azs             = ["az1", "az2", "az3"]
  vpc_cidr        = "10.0.192.0/18"
  private_subnets = [for k, v in local.azs : cidrsubnet(local.vpc_cidr, 3, k)]   # 10.0.192.0, 10.0.200.0, 10.0.208.0
  public_subnets  = [for k, v in local.azs : cidrsubnet(local.vpc_cidr, 4, k+6)] # 10.0.216.0, 10.0.220.0, 10.0.224.0
  intra_subnets   = [for k, v in local.azs : cidrsubnet(local.vpc_cidr, 4, k+9)] # 10.0.228.0, 10.0.232.0, 10.0.236.0
}

output "private_subnets" {
  value = local.private_subnets
}

output "public_subnets" {
  value = local.public_subnets
}

output "intra_subnets" {
  value = local.intra_subnets
}

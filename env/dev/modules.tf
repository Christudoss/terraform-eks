module "networking" {
    source = "../../modules/networking"  
    cluster-name = var.cluster-name
}

module "master" {
    source = "../../modules/master" 
    vpc_id = module.networking.vpc_id
    cluster-name = var.cluster-name
    subnet = module.networking.subnet

}

module "workernode" {
    source = "../../modules/workernode" 
    aws_eks_cluster = module.master.aws_eks_cluster
    vpc_id = module.networking.vpc_id
    cluster-name = var.cluster-name
    cluster_security_group_id = module.master.cluster_security_group_id
    subnet = module.networking.subnet
    
}
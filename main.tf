module "network" {
    source = "./Modules/VPC-Network"
    vpc_cidr_block = "10.0.0.0/16"
    public_subnet_cidr = "10.0.0.0/24"
  
}
module "security" {
    source= "./Modules/Security"
    vpc_id = module.network.vpc_id
  
}
module "compute" {
    source = "./Modules/Compute"
    ami_id = "ami-0ecb62995f68bb549"
    key_name = "Ansible"
    subnet_id = module.network.public_subnet_id
    jenkins_sg_id = module.security.jenkins_sg_id
    sonarqube_sg_id = module.security.sonarqube_sg_id
    nexus_sg_id = module.security.nexus_sg_id
    docker_sg_id = module.security.docker_registry_sg_id
    #ansible_sg_id = module.security.ansible_sg_id
  
}

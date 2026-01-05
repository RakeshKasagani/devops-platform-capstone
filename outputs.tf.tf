output "jenkins_public_ip" {
  value = module.compute.jenkins_public_ip
}

output "sonarqube_public_ip" {
  value = module.compute.sonarqube_public_ip
}

output "nexus_public_ip" {
  value = module.compute.nexus_public_ip
}

output "docker_public_ip" {
  value = module.compute.docker_public_ip
}
# output "ansible_public_ip" {
#   value = module.compute.ansible_public_ip
# }

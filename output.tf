output "container_ssh_ports" {
  description = "List of host ports mapped to container SSH (22)"
  value       = [for c in docker_container.web : c.ports[0].external]
}

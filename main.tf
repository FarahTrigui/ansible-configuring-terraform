terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.16.0"
    }
  }
}

provider "docker" {
  host = "unix:///var/run/docker.sock"
}

# Pull the Docker image with SSH enabled
resource "docker_image" "ubuntu_sshd" {
  name = "rastasheep/ubuntu-sshd"
}

# Create two Docker containers (simulate two servers)
resource "docker_container" "web" {
  count = 2
  name  = "web-${count.index}"
  image = docker_image.ubuntu_sshd.name

  # Map container’s SSH port (22) to a unique host port (2200 and 2201)
  ports {
    internal = 22
    external = 2200 + count.index
  }
   # Apache port
  ports {
    internal = 80
    external = 8080 + count.index
  }

  # Keep the container running
  
}

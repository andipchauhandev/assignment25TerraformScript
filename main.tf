terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.0"
    }
  }
}

provider "docker" {}


resource "docker_container" "nginx" {
  image = "nginx"
  name  = "nginx-container"

  ports {
    internal = 80
    external = 8081
  }
}

provider "docker" {}

resource "docker_container" "nginx" {
  image = "nginx"
  name  = "nginx-container"

  ports {
    internal = 80
    external = 8081
  }
}

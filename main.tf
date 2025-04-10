# Start a container
resource "docker_container" "nginx" {
  name  = "nginx"
  image = docker_image.nginx_image.name
}

# Find the latest Ubuntu precise image.
resource "docker_image" "nginx_image" {
  name = "nginx:latest"
}

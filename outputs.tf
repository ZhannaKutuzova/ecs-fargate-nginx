# outputs.tf
data "aws_ecs_task" "nginx_task" {
  cluster = aws_ecs_cluster.main.id
  service_name = aws_ecs_service.nginx.name

  # Ensure the service is stable before attempting to retrieve task info
  depends_on = [aws_ecs_service.nginx]
}

output "nginx_service_public_ip" {
  description = "Public IP address of the NGINX service"
  value       = data.aws_ecs_task.nginx_task.containers.0.network_interfaces.0.public_ip
}
resource "kubernetes_service" "webapp_service" {
  metadata {
    name      = "webapp-service"
    namespace = "default"
  }
  spec {
    port {
      port        = 8080        
      target_port = 8080        
      node_port   = 30080       
    }
    type = "NodePort"
  }
}
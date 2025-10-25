resource "kubernetes_pod" "test" {
  metadata {
    name = "konda"
  }

  spec {
    container {
      image = "nginx:1.21.6"
      name  = "konda-container"

      env {
        name  = "environment"
        value = "test"
      }

      port {
        container_port = 80
      }

        resources  {
        requests = {
            memory= "64Mi"
            cpu= "250m"
            }
            limits = {
            memory= "128Mi"
            cpu= "500m"
            }
        }

    }


   
  }
}
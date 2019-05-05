resource "kubernetes_pod" "hello_world" {
  metadata {
    name = "hello-world"
  }

  spec {
    container {
      name  = "hello-world"
      image = "hello-world"
    }
  }
}

resource "kubernetes_service" "hello_world" {
  metadata {
    name = "hello-world"
  }

  spec {
    port {
      protocol    = "TCP"
      port        = 80
      target_port = "80"
    }

    selector {
      app = "hw"
    }
  }
}

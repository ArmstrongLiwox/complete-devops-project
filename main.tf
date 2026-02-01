terraform{
    required_providers{
        minicube = {
            source = "scott-the-programmer/minicube"
            version = "0.6.0"
        }
    }
}

provider "mnicube" {
    kubernetes_versiion = "1.30"
}

resourse "minicube_cluster" "minicube_docker"{
    driver = "docker"
    cluster_name = "complete-devops-project"
    addons = {
        "default-storageclass"
        "storage-provisioner"
    }
}
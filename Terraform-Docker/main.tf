terraform { # terraform block to install the docker provider
    required_providers {
        docker ={
      source="kreuzwerker/docker" //its will go into the registery of terraform that is registry.terraform.io/kreuzwerker/docker
      version="4.2.0"
        }
    }
}

provider "docker" { } # inform terraform about provider

resource "docker_image" "nginx" { // resource block
    name="nginx:latest"
    keep_locally=false 
  
}

resource "docker_container" "nginx-container" {
    image=docker_image.nginx.image_id
    name="nginx-tf"
    ports {
        internal=80
        external=9999
    }
}


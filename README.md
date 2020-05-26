# terraform

terraform 

## Quick Start

```
cat <<-EOT > docker-compose.yml
version: "3"
services:
  terraform:
    container_name: terraform
    hostname: terraform
    image: icmdb/terraform
    command: sleep 1000
EOT

docker-compose up -d

docker exec -ti teraform init

docker exec -ti terraform bash
```

## Reference

* [tfutils/tfenv](https://github.com/tfutils/tfenv)
* [HashiCorp/docker-hub-images - GitHub](https://github.com/hashicorp/docker-hub-images)
* [Download Terraform](https://www.terraform.io/downloads.html)

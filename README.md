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
    environment:
    - TF_LOG=
    command: sleep 1000
EOT

docker-compose up -d

docker exec -ti teraform init
```

## Multi version management

```
docker exec -ti terraform bash

tfenv list-remote       # List all installable versions

tfenv install 0.12.11   # Install legacy version

tfenv use 0.12.1        # Switch to the legacy version

terraform version       # Show current terraform version
```

## Try demos

```
docker exec -ti terraform bash

cd ali 

terraform init

export ALICLOUD_ACCESS_KEY="YOUR_ALICLOUD_ACCESS_KEY"
export ALICLOUD_SECRET_KEY="YOUR_ALICLOUD_SECRET_KEY"

terraform plan

terraform apply

tree ./tf-outfile
```

## Reference

* [tfutils/tfenv](https://github.com/tfutils/tfenv)
* [HashiCorp/docker-hub-images - GitHub](https://github.com/hashicorp/docker-hub-images)
* [Download Terraform](https://www.terraform.io/downloads.html)
* [Environment Variables - HashiCorp](https://www.terraform.io/docs/commands/environment-variables.html)

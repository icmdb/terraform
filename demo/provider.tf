provider "alicloud" {
  alias  = "ali-bjs"
  region = "cn-beijing" # BEIJING
}
provider "alicloud" {
  alias  = "ali-het" # HOHHOT
  region = "cn-huhehaote"
}

provider "aws" {
  alias  = "aws-hkg" # HONGKONG
  region = "ap-east-1"
}

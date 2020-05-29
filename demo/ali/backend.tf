# terraform {
#   backend "oss" {
#     bucket              = "terraform-state"
#     prefix              = "icmdb"
#     key                 = "demo.tfstate"
#     region              = "cn-beijing" # Variables not allowed
#     tablestore_endpoint = "https://terraform-remote.cn-hangzhou.ots.aliyuncs.com"
#     tablestore_table    = "statelock"
#   }
# }

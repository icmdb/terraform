output "datasource" {
  value = {
    "alicloud_account_id" : module.datasource.alicloud_account_id,
    "datasource_dir" : module.datasource.datasource_dir,
    "regions" : module.datasource.regions,
    "region_alias" : module.datasource.region_alias,
    "cidr_blocks" : module.datasource.cidr_blocks,
  }
}

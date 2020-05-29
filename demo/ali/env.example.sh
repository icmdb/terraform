#!/bin/bash
#
# @reference:
#   https://www.terraform.io/docs/commands/environment-variables.html
#   https://www.terraform.io/docs/plugins/basics.html
#

export ALICLOUD_TF_AUTHOR="ihanyouqing@gmail.com"

export ALICLOUD_ACCOUNT="${ALICLOUD_ACCOUNT}"   # This is just comment for multi accounts
export ALICLOUD_ACCESS_KEY="${ALICLOUD_ACCESS_KEY}"
export ALICLOUD_SECRET_KEY="${ALICLOUD_SECRET_KEY}"
export ALICLOUD_REGION="${ALICLOUD_REGION:=cn-beijing}"



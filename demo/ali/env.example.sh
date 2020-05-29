#!/bin/bash
#
# @reference:
#   https://www.terraform.io/docs/commands/environment-variables.html
#   https://www.terraform.io/docs/plugins/basics.html
#

export ALICLOUD_TF_AUTHOR="ihanyouqing@gmail.com"

export ALICLOUD_ACCOUNT="${ALICLOUD_ACCOUNT}"
export ALICLOUD_ACCESS_KEY="${ALICLOUD_ACCOUNT}"
export ALICLOUD_SECRET_KEY="${ALICLOUD_ACCOUNT}"
export ALICLOUD_REGION="${ALICLOUD_REGION:=cn-beijing}"



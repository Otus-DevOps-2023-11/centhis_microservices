#!/bin/bash

tf_out=`cd ../terraform; terraform output`

app_ip=`echo "$tf_out" | grep external_ip_address_app | awk '{print $3}'`
db_ip=` echo "$tf_out" | grep external_ip_address_db  | awk '{print $3}'`

out="{\"_meta\":{\"hostvars\":{}},\"db\":{\"hosts\":[$db_ip]},\"app\":{\"hosts\":[$app_ip]}}"

echo $out

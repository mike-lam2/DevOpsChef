name "ec2Bare"
description "A role to configure for ec2 aws no cfn-hup"
run_list "recipe[ec2]"
default_attributes "ec2" => { "IncludeCfn" => "no" }
 
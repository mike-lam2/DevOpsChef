include_recipe 'ec2::xterm'
include_recipe 'ec2::bash_profile'
if "Yes".eql?(node.default['ec2']['IncludeCfn'])
  include_recipe 'ec2::cfn'
end
include_recipe 'apt::default'
include_recipe 'jenkins-install::firewall'
include_recipe 'jenkins::java'
include_recipe 'jenkins::master'
include_recipe 'jenkins-install::secure-jenkins'
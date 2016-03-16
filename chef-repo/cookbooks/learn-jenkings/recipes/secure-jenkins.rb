#
# Cookbook Name:: jenkins-install
# Recipe:: secure-jenkins
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

jenkins_script 'activate global security' do
  command <<-EOH.gsub(/^ {4}/, '')
      import jenkins.model.*
      import hudson.security.*

      // Get access to the jenkins instance
      def instance = Jenkins.getInstance()

      // Activate global security
      def hudsonRealm = new HudsonPrivateSecurityRealm(false)
      instance.setSecurityRealm(hudsonRealm)

      // Create an admin account
      hudsonRealm.createAccount("#{node['jenkins']['admin']['name']}", "#{node['jenkins']['admin']['password']}")

      // Activate matrix security and add admin user
      def strategy = new GlobalMatrixAuthorizationStrategy()
      strategy.add(Jenkins.ADMINISTER, "#{node['jenkins']['admin']['name']}")
      instance.setAuthorizationStrategy(strategy)
      
      instance.save()
  EOH
end

service "jenkins" do
  action :restart
end

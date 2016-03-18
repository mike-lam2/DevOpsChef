remote_file '/var/log/buildAttributes.txt' do
  source 'file:///var/chef/chef-repo/cookbooks/ec2/attributes/default.rb'
  mode '0444'
  action :create
end

link '/var/www/html/log' do
  to '/var/log'
  link_type :symbolic
end

link '/var/www/html/ec2-user' do
  to '/home/ec2-user'
  link_type :symbolic
end

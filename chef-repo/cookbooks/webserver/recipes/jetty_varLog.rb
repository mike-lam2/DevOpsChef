template '/home/ec2-user/jetty_base/webapps/varlog.xml' do
  source 'varlog.xml.erb'
  mode '0444'
  action :create
end

template '/home/ec2-user/jetty_base/webapps/ec2user.xml' do
  source 'ec2user.xml.erb'
  mode '0444'
  action :create
end

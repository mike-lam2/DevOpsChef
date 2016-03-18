template '/home/ec2-user/jetty-distribution-9.2.15.v20160210/demo-base/webapps/varlog.xml' do
  source 'varlog.xml.erb'
  mode '0444'
  action :create
end

template '/home/ec2-user/jetty-distribution-9.2.15.v20160210/demo-base/webapps/ec2user.xml' do
  source 'ec2user.xml.erb'
  mode '0444'
  action :create
end

bash 'jetty' do
  cwd '/home/ec2-user/'
  code <<-EOH
wget http://download.eclipse.org/jetty/9.2.15.v20160210/dist/jetty-distribution-9.2.15.v20160210.tar.gz
tar xvf jetty-distribution-9.2.15.v20160210.tar.gz
rm jetty-distribution-9.2.15.v20160210.tar.gz
mv jetty-distribution-9.2.15.v20160210 jetty_home
chown -R ec2-user:ec2-user jetty_home
mv jetty_home/demo-base jetty_base
cd jetty_base
java -jar /home/ec2-user/jetty_home/start.jar &
    EOH
end

template '/home/ec2-user/jetty_start.sh' do
  source 'jetty_start.sh.erb'
  owner 'ec2-user'
  group 'ec2-user'
  mode '0700'
end

template '/home/ec2-user/jetty_stop.sh' do
  source 'jetty_stop.sh.erb'
  owner 'ec2-user'
  group 'ec2-user'
  mode '0700'
end

=begin
THIS PIECE DOES NOT WORK
cd jetty_base
java -jar /home/ec2-user/jetty_home/start.jar &
    EOH
end

#this will restart it when server gets restarted
template '/etc/init.d/sysvScriptJetty ' do
  source 'sysvScriptJetty.erb'
  owner 'root'
  group 'root'
  mode '0444'
end
=end


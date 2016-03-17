bash 'jetty' do
  cwd '/home/ec2-user/'
  code <<-EOH
wget http://download.eclipse.org/jetty/9.2.15.v20160210/dist/jetty-distribution-9.2.15.v20160210.tar.gz
tar xvf jetty-distribution-9.2.15.v20160210.tar.gz
cd jetty-distribution-9.2.15.v20160210
cd demo-base
java -jar /home/ec2-user/jetty-distribution-9.2.15.v20160210/start.jar &
    EOH
end


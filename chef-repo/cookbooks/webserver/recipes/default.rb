include_recipe 'ec2'

if "httpd".eql?(node.default['webserver']['WebserverType'])
  include_recipe 'webserver::httpd'
elsif "jetty".eql?(node.default['webserver']['WebserverType'])
  include_recipe 'webserver::jetty'
elsif 
  log 'message' do
    message 'ERROR UNKNOWNED SERVER TO INSTALL:'+node.default['webserver']['WebserverType']
    level :error
  end
end
  
include_recipe 'webserver::varLog'

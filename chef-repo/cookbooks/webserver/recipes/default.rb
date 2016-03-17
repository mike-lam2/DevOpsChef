include_recipe 'ec2'

if "httpd".eql?(node.default['webserver']['WebserverType'])
  include_recipe 'webserver::httpd'
elseif if "jetty".eql?(node.default['webserver']['WebserverType'])
  include_recipe 'webserver::jetty'
else
  log 'message' do
    message 'ERROR UNKNOWNED SERVER TO INSTALL.'
    level :error
  end
end
  
include_recipe 'webserver::varLog'

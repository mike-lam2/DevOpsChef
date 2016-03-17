node.default['webserver']['WebserverType'] = "jetty"
node.default['webserver']['WebserverBase'] = ''

include_recipe 'webserver::webserver'

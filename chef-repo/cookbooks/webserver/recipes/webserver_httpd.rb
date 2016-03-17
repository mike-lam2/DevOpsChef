node.default['webserver']['WebserverType'] = "httpd"
node.default['webserver']['WebserverBase'] = '/var/www/html'

include_recipe 'webserver::webserver'

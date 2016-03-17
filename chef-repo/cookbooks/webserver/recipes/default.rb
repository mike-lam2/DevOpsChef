default['webserver']['WebserverType'] = "httpd"
default['webserver']['WebserverBase'] = '/var/www/html'

include_recipe 'webserver::webserver'

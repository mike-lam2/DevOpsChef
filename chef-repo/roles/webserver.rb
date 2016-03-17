name "webserver"
description "A role to configure for webserver"
run_list "recipe[webserver]"
default_attributes "ec2" => { "IncludeCfn" => "no" }
default_attributes "webserver" => { "WebserverType" => "httpd" }, {"WebserverBase","/var/www/html"}

 
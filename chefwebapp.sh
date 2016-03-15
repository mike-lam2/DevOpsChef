cp -R /home/ec2-user/DevOpsChef/chef-repo/* /var/chef/chef-repo
cd /var/chef/chef-repo/cookbooks
chef-client --local-mode --runlist recipe[infrastructure::ec2_webapp]
cd /home/ec2-user/DevOpsChef
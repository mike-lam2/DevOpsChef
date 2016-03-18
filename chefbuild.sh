cd /home/ec2-user/DevOpsChef
cp -R /home/ec2-user/DevOpsChef/chef-repo/* /var/chef/chef-repo
chmod +x *.sh
cd /var/chef/chef-repo/cookbooks
chef-client --local-mode --runlist recipe[$1] >> /var/log/chef-client.log
cd /home/ec2-user/DevOpsChef
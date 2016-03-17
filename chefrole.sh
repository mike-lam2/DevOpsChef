cd /home/ec2-user/DevOpsChef
git pull --no-commit
cp -R /home/ec2-user/DevOpsChef/chef-repo/* /var/chef/chef-repo
cd /var/chef/chef-repo/cookbooks
chef-client --local-mode --runlist role[$1] >> /var/log/chef-client.log
cd /home/ec2-user/DevOpsChef
include_recipe 'ec2'

gitsite = node.default['ec2']['Gitsite']
application= node.default['ec2']['Application']
branch_name = node.default['ec2']['BranchToClone']
repo=gitsite+application+'.git'

bash 'git-clone' do
  cwd '/var/www/html/'
  code <<-EOH
    git clone https://github.com/mike-lam2/#{application} --branch #{branch_name} 
    EOH
end

file '/var/www/html/'+application+'/build.sh' do
  mode '0775'
end

bash 'git-clone' do
  cwd '/var/www/html/'
  code <<-EOH
    chown -R apache:apache * 
    EOH
end

include_recipe 'infrastructure::xterm'

gitsite = node.default['default']['Gitsite']
application= node.default['default']['Application']
branch_name = node.default['default']['BranchToClone']
repo=gitsite+application+'.git'

bash 'git-clone' do
  cwd '/var/www/html/'
  user 'apache'
  group 'apache'
  code <<-EOH
    git clone https://github.com/mike-lam2/#{application} --branch #{branch_name} 
    EOH
end

file '/var/www/html/'+application+'/build.sh' do
  mode '0775'
end
StackName = node.default['default']['StackName']
#label='echo -ne "\033]0;${USER}@'+StackName+':${PWD/#$HOME/~}\007"'
label='echo -ne a'+StackName+'z'

file '/etc/sysconfig/bash-prompt-xterm' do
  action :create
  mode '0555'
  group 'root'
  owner 'root'
  content label
end


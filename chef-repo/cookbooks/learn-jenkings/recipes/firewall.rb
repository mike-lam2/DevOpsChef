include_recipe 'firewall::default'

# Open default servlet port for Jenkins
firewall_rule 'servlet' do
  port    8080
  command :allow
end

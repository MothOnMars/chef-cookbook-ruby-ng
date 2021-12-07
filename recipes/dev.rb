include_recipe 'build-essential'
include_recipe 'ruby-ng::default'

v = node['ruby-ng']['ruby_version']

Chef::Log.info "mct ruby_version in dev: #{v}" 

apt_package "ruby#{v}-dev" do
  if node['ruby-ng']['ruby_package_version']
    version node['ruby-ng']['ruby_package_version']
  end

  if node['ruby-ng']['hold_ruby_packages']
    action :lock
  else
    action :unlock
    action :install
  end
end

include_recipe 'build-essential'
include_recipe 'ruby-ng::default'

v = node['ruby-ng']['ruby_version']

execute "hold ruby#{v}-dev package" do
  command "apt-mark hold ruby#{v}-dev"
  action  :nothing
end

package "ruby#{v}-dev" do
  if node['ruby-ng']['ruby_package_version']
    version node['ruby-ng']['ruby_package_version']
  end

  if node['ruby-ng']['hold_ruby_packages']
    notifies :run, "execute[hold ruby#{v}-dev package]", :immediate
  end
end

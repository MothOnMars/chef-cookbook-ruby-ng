require_relative 'helpers'

describe_recipe "ruby-ng::default" do
  include Helpers::RubyNgTests

  it 'Installs the ruby<version> package' do
    package("ruby#{node['ruby-ng']['ruby_version']}").must_be_installed
  end

  it 'Installs the bundler gem' do
    shell_out!('gem list bundler').stdout.must_match(/bundler \(/)
  end
end

describe_recipe "ruby-ng::dev" do
  it 'Installs the ruby<version>-dev package' do
    package("ruby#{node['ruby-ng']['ruby_version']}-dev").must_be_installed
  end

  it 'Installs the build-essential package' do
    package('build-essential').must_be_installed
  end
end

default['ruby-ng']['experimental'] = false
default['ruby-ng']['ruby_version'] = '2.1'

# If this is set to "latest", Bundler is upgraded to the latest version. If this is not set,
# the existing (potentially outdated) version of Bundler is kept.
default['ruby-ng']['bundler_version'] = 'latest'

# Likewise for the ruby packages themselves. However, this setting
# defaults to keeping the first version installed.
default['ruby-ng']['ruby_package_version'] = nil

# Whether to hold the ruby package(s) after installation. Holding
# prevents the packages from being upgraded externally, e.g.
# when running apt-get update at the CLI.
default['ruby-ng']['hold_ruby_packages'] = false

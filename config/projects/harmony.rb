name 'harmony'
maintainer 'Chef Software'
homepage 'https://getchef.com'

install_dir "#{default_root}/#{name}"

build_version   '1.0.0'
build_iteration 1

# creates required build directories
dependency 'preparation'

# harmony dependencies/components
if windows?
  dependency 'libyaml-windows'
else
  dependency 'rsync'
end

# version manifest file
dependency 'version-manifest'

exclude '\.git*'
exclude 'bundler\/git'
exclude 'man\/'

package :pkg do
  identifier 'com.getchef.harmony'
end

package :msi do
  upgrade_code '3AA89B1F-D8F3-4D46-8CB2-534C8313DBFD'
end
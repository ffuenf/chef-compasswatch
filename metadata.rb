maintainer 'Achim Rosenhagen'
maintainer_email 'a.rosenhagen@ffuenf.de'
license 'Apache 2.0'
description 'installs/configures compasswatch'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
name 'compasswatch'
version '1.2.4'

%w(
  debian
  ubuntu
).each do |os|
  supports os
end

%w(php).each do |ressource|
  recommends ressource
end

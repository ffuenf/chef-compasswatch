Description
===========

Installs [compass](http://compass-style.org/) and provides access to a corresponding LWRP.

Attributes
==========
* `node['compasswatch']['install_dir']` - default: '/etc/init.d'
* `node['compasswatch']['conf_dir']` - default: '/etc/compasswatch'
* `node['compasswatch']['log_dir']` - default: '/var/log'

Usage
=====

Simply include the recipe in your application recipe, where you want to use it.
```ruby
include_recipe "compasswatch"
```

ATTENTION: name this cookbook "compasswatch" if you want to use the LWRP like this:
```ruby
compasswatch "YOURPROJECT" do
	action :install
end
```

License and Author
==================

Author:: Achim Rosenhagen (<a.rosenhagen@ffuenf.de>)

Copyright:: 2014, Achim Rosenhagen

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
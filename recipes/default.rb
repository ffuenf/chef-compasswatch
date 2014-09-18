# # # # # # # # #
# compasswatch  #
# # # # # # # # #

gem_package 'compass'
gem_package 'sass' do
  version '~>3.4.4'
end
template "#{node['compasswatch']['install_dir']}/compasswatch" do
  cookbook 'compasswatch'
  source 'compasswatch.erb'
  variables(
    conf_dir: node['compasswatch']['conf_dir'],
    log_dir: node['compasswatch']['log_dir']
  )
  mode 0755
end
service 'compasswatch' do
  supports start: true, stop: true, status: true, restart: true
  action :nothing
end
directory node['compasswatch']['conf_dir'] do
  action :create
  recursive true
end

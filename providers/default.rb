#
# Cookbook Name:: compasswatch
# Provider:: compasswatch
#
# Copyright 2014, Achim Rosenhagen
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Support whyrun
def whyrun_supported?
	true
end

action :setup do
	description = "setup compasswatch #{new_resource.name} in #{new_resource.http_path}"
	converge_by(description) do
		
		directory "#{node['compasswatch']['conf_dir']}/#{new_resource.name}/.sass-cache" do
			action :create
			recursive true
		end
		
		template "#{node['compasswatch']['conf_dir']}/#{new_resource.name}/config.rb" do
			cookbook "compasswatch"
			source "config.rb.erb"
			variables({
				:name => "#{new_resource.name}",
				:project_type => "#{new_resource.project_type}",
				:environment => "#{new_resource.environment}",
				:project_path => "#{new_resource.project_path}",
				:http_path => "../../..#{new_resource.http_path}",
				:css_dir => "../../..#{new_resource.css_dir}",
				:css_path => "#{new_resource.css_path}",
				:http_stylesheets_path => "#{new_resource.http_stylesheets_path}",
				:sass_dir => "../../..#{new_resource.sass_dir}",
				:sass_path => "#{new_resource.sass_path}",
				:images_dir => "../#{new_resource.images_dir}",
				:images_path => "#{new_resource.images_path}",
				:http_images_path => "#{new_resource.http_images_path}",
				:generated_images_dir => "#{new_resource.generated_images_dir}",
				:generated_images_path => "#{new_resource.generated_images_path}",
				:http_generated_images_path => "#{new_resource.http_generated_images_path}",
				:javascripts_dir => "../#{new_resource.javascripts_dir}",
				:javascripts_path => "#{new_resource.javascripts_path}",
				:http_javascripts_path => "#{new_resource.http_javascripts_path}",
				:output_style => "#{new_resource.output_style}",
				:relative_assets => "#{new_resource.relative_assets}",
				:additional_import_paths => "#{new_resource.additional_import_paths}",
				:disable_warnings => "#{new_resource.disable_warnings}",
				:sass_options => "#{new_resource.sass_options}",
				:line_comments => "#{new_resource.line_comments}",
				:preferred_syntax => "#{new_resource.preferred_syntax}",
				:fonts_dir => "#{new_resource.fonts_dir}",
				:fonts_path => "#{new_resource.fonts_path}",
				:http_fonts_path => "#{new_resource.http_fonts_path}",
				:http_fonts_dir => "#{new_resource.http_fonts_dir}",
				:sprite_engine => "#{new_resource.sprite_engine}",
				:chunky_png_options => "#{new_resource.chunky_png_options}",
				:sprite_load_path => "#{new_resource.sprite_load_path}"
			})
		end
		
		service "compasswatch" do
			action [ :restart ]
		end
		
	end
end
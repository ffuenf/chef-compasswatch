actions :setup
default_action :setup

attribute :name, kind_of: String, name_attribute: true
attribute :project_type, kind_of: String, equal_to: [':stand_alone', ':rails'], default: ':stand_alone'
attribute :environment, kind_of: String, equal_to: [':development', ':production'], default: ':development'
attribute :project_path, kind_of: String, default: ''
attribute :http_path, kind_of: String, default: '/'
attribute :css_dir, kind_of: String, default: '/'
attribute :css_path, kind_of: String, default: ''
attribute :http_stylesheets_path, kind_of: String, default: ''
attribute :sass_dir, kind_of: String, default: 'sass'
attribute :sass_path, kind_of: String, default: ''
attribute :images_dir, kind_of: String, default: 'images'
attribute :images_path, kind_of: String, default: ''
attribute :http_images_path, kind_of: String, default: ''
attribute :generated_images_dir, kind_of: String, default: ''
attribute :generated_images_path, kind_of: String, default: ''
attribute :http_generated_images_path, kind_of: String, default: ''
attribute :javascripts_dir, kind_of: String, default: ''
attribute :javascripts_path, kind_of: String, default: ''
attribute :http_javascripts_path, kind_of: String, default: ''
attribute :output_style, kind_of: String, equal_to: [':expanded', ':nested', ':compact', ':compressed'], default: ':expanded'
attribute :relative_assets, kind_of: [TrueClass, FalseClass], default: true
attribute :additional_import_paths, kind_of: String, default: ''
attribute :disable_warnings, kind_of: [TrueClass, FalseClass], default: false
attribute :sass_options, kind_of: String, default: ''
attribute :line_comments, kind_of: [TrueClass, FalseClass], default: false
attribute :preferred_syntax, kind_of: String, equal_to: [':scss', ':sassd'], default: ':scss'
attribute :fonts_dir, kind_of: String, default: ''
attribute :fonts_path, kind_of: String, default: ''
attribute :http_fonts_path, kind_of: String, default: ''
attribute :http_fonts_dir, kind_of: String, default: ''
attribute :sprite_engine, kind_of: String, default: ':chunky_png'
attribute :chunky_png_options, kind_of: String, default: '{compression: Zlib::BEST_COMPRESSION}'
attribute :sprite_load_path, kind_of: String, default: '[images_path]'

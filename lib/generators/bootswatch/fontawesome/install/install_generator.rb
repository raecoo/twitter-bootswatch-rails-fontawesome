require 'rails/generators'
require 'less-rails'

module Bootswatch
  module Fontawesome
    module Generators
      class InstallGenerator < ::Rails::Generators::NamedBase

        DEFAULT_RAILS_APP_CSS_FILE='app/assets/stylesheets/application.css'
        DEFAULT_THEME_NAME='bootswatch'

        argument :name, type: :string, default: DEFAULT_THEME_NAME,
                 desc: 'The theme name to place this Font Awesome bootswatch into'

        # needed for thor templates
        source_root File.expand_path("../templates", __FILE__)

        def theme_name
          file_name
        end

        def use_default_theme_name?
          theme_name === DEFAULT_THEME_NAME
        end

        def theme_info
          "#{use_default_theme_name? ? 'bootstrap'.capitalize : theme_name.capitalize}"
        end

        def add_assets

          if use_default_theme_name?

            if File.exist?(DEFAULT_RAILS_APP_CSS_FILE)

              unless File.read(DEFAULT_RAILS_APP_CSS_FILE).include?('font-awesome')
                insert_into_file DEFAULT_RAILS_APP_CSS_FILE,
                               " *= require #{theme_name}/font-awesome\n",
                               :before => "*/"
              end

            end

          else

            if File.exist?("app/assets/stylesheets/#{theme_name}.css")

              unless File.read("app/assets/stylesheets/#{theme_name}.css").include?('font-awesome')
                insert_into_file "app/assets/stylesheets/#{theme_name}.css",
                               " *= require #{theme_name}/font-awesome\n",
                               :before => "*/"
              end

            end
          end

        end

        def add_stylesheets

          stylesheets_dest_path = "app/assets/stylesheets/#{theme_name}"
          empty_directory stylesheets_dest_path

          less_variables = File.readlines(find_in_source_paths('variables.less'))

          less_imports = File.read(find_in_source_paths('font-awesome.less')).scan(Less::Rails::ImportProcessor::IMPORT_SCANNER).flatten.compact.uniq

          template 'font-awesome.less.tt', File.join(stylesheets_dest_path,'font-awesome.less'), {less_imports: less_imports, less_variables: less_variables, theme_name: theme_name, theme_info: theme_info}

        end

      end
    end
  end
end


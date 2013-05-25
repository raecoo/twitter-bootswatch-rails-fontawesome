require 'rails'

module Twitter
  module Bootswatch
    module Rails
      module Fontawesome
        class Engine < ::Rails::Engine

          initializer 'twitter-bootswatch-rails-fontawesome.setup',
            :after => 'less-rails.after.load_config_initializers',
            :group => :all do |app|

              if defined?(Less)
                app.config.less.paths << File.join(config.root, 'vendor', 'toolkit')
              end

            end

          initializer 'twitter-bootswatch-rails-fontawesome.setup_helpers' do |app|
            app.config.to_prepare do

            end
          end
        end
      end
    end
  end
end
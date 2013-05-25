require 'rails'

module Twitter
  module Bootswatch
    module Rails
      module Fontawesome
        class Engine < ::Rails::Engine

          initializer 'twitter-bootswatch-rails-fontawesome.setup',
            :after => 'less-rails.after.load_config_initializers',
            :group => :all do |app|

              app.config.assets.paths << File.join(config.root, 'vendor', 'toolkit')
              app.config.less.paths << File.join(config.root, 'vendor', 'toolkit')

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
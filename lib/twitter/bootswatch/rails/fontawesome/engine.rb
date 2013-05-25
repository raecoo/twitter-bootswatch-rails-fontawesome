require 'rails'

module Twitter
  module Bootswatch
    module Rails
      module Fontawesome
        class Engine < ::Rails::Engine

          initializer 'twitter-bootswatch-rails-fontawesome.setup',
            :after => 'twitter-bootswatch-rails.setup',
            :group => :all do |app|

              paths = %W[
                #{File.join(config.root, 'vendor', 'toolkit')}
              ]

              paths.each do |p|
                app.config.assets.paths << p
                app.config.less.paths << p
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
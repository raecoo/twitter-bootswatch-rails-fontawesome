require 'twitter/bootswatch/rails/fontawesome/version'

module Twitter
  module Bootswatch
    module Rails
      module Fontawesome
        require 'twitter/bootswatch/rails/fontawesome/engine' if defined?(::Rails)
      end
    end
  end
end

require 'less-rails'
require 'twitter/bootswatch/rails/fontawesome/engine' if defined?(::Rails)
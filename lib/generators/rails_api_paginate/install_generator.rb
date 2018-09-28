module RailsApiPaginate
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('../../templates', __FILE__)
      desc 'Creates RailsApiPaginate initializer for your application'

      def copy_initializer
        template 'rails_api_paginate_config.rb', 'config/initializers/rails_api_paginate_config.rb'

        puts 'Install complete! Update config/initializers/rails_api_paginate_config.rb to your needs.'
      end
    end
  end
end

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails_api_paginate/version'

Gem::Specification.new do |spec|
  spec.name          = 'rails_api_paginate'
  spec.version       = RailsApiPaginate::VERSION
  spec.authors       = ['Usman']
  spec.email         = ['uxman.sherwani@gmail.com']

  spec.summary       = %q{Pagination support for rails API-Only applications.}
  spec.description   = %q{Add pagination support to rails API-Only applications for ActiveRecord relations.}
  spec.homepage      = 'https://github.com/uxman-sherwani/rails_api_paginate'
  spec.license       = 'MIT'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'rails', '~> 6.0'
  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 10.0'
end

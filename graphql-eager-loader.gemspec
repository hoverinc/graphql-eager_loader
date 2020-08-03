# frozen_string_literal: true

require_relative 'lib/graphql/eager_loader/version'

Gem::Specification.new do |spec|
  spec.name          = 'graphql-eager_loader'
  spec.version       = Graphql::EagerLoader::VERSION
  spec.authors       = ['Elise Wood']
  spec.email         = ['elise@hover.to']

  spec.summary       = 'Generate ActiveRecord eager loading options from GraphQL Queries.'
  spec.description   = ''
  spec.homepage      = 'https://github.com/hoverinc/graphql-eager-loader.'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  spec.metadata['allowed_push_host'] = 'github.com/hoverinc/graphql-eager-loader'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/hoverinc/graphql-eager-loader'
  spec.metadata['changelog_uri'] = 'https://github.com/hoverinc/graphql-eager-loader/commits'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end
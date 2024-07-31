# frozen_string_literal: true

require_relative 'lib/tena_dcms/version'

Gem::Specification.new do |spec|
  spec.required_ruby_version = '>= 3.1'
  spec.name        = 'tena_dcms'
  spec.version     = TenaDcms::VERSION
  spec.authors     = ['Asrat']
  spec.email       = ['asratextras77@gmail.com']
  spec.homepage    = 'https://www.tena.com'
  spec.summary     = 'An engine for TENA DCMS'
  spec.description = 'Model and Endpoints for TENA DCMS'
  spec.license     = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/Asrat77/DCMS-TENA.git'
  spec.metadata['changelog_uri'] = 'https://github.com/Asrat77/DCMS-TENA.git'

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']
  end

  spec.add_dependency 'active_model_serializers'
  spec.add_dependency 'ancestry', '~> 4.1.0'
  spec.add_dependency 'bcrypt', '~> 3.1'
  spec.add_dependency 'httparty'
  spec.add_dependency 'image_processing', '~> 1.12', '>= 1.12.2'
  spec.add_dependency 'jwt', '~> 2.7'
  spec.add_dependency 'noticed', '~> 1.6'
  spec.add_dependency 'rails', '~> 7.1.0'
  spec.add_dependency 'ransack'
  spec.add_dependency 'sqlite3', '~> 1.4'

  spec.add_development_dependency 'database_cleaner-active_record'
  spec.add_development_dependency 'factory_bot_rails'
  spec.add_development_dependency 'faker'
  spec.add_development_dependency 'letter_opener'
  spec.add_development_dependency 'rspec-rails'
  spec.add_development_dependency 'rspec-retry'
  spec.add_development_dependency 'rubocop-rspec'
  spec.add_development_dependency 'shoulda-matchers'
  spec.add_development_dependency 'simplecov'
end

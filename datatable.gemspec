# frozen_string_literal: true

$:.push File.expand_path('lib', __dir__)

# Maintain your gem's version:
require 'datatable/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'datatable'
  s.version     = Datatable::VERSION
  s.authors     = ['Broly CJW']
  s.email       = ['brolycjw@gmail.com']
  s.homepage    = 'https://github.com/brolycjw/datatable'
  s.summary     = 'Summary of Datatable.'
  s.description = 'Description of Datatable.'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*',
                'MIT-LICENSE',
                'Rakefile',
                'README.md']

  s.add_dependency 'kaminari', '>= 1.0'
  s.add_dependency 'rails', '>= 5.0'

  s.add_development_dependency 'capybara'
  s.add_development_dependency 'chromedriver-helper'
  s.add_development_dependency 'draper'
  s.add_development_dependency 'factory_bot_rails'
  s.add_development_dependency 'selenium-webdriver'
  s.add_development_dependency 'sqlite3'
end

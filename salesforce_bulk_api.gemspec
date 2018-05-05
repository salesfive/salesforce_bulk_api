# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "salesforce_bulk_api/version"

Gem::Specification.new do |s|
  s.name        = 'salesforce_bulk_api_serial_or_parallel'
  s.version     = SalesforceBulkApi::VERSION
  s.authors     = ['Brendan Keogh']
  s.email       = ['bkeogh123@gmail.com']

  s.homepage    = 'https://github.com/beekermememe/salesforce_bulk_api'
  s.summary     = %q{It uses the bulk api of salesforce to communicate with Salesforce CRM}
  s.description = %q{Salesforce Bulk API with governor limits taken care of, this is a fork off of yatish27/salesforce_bulk_api that just adds serial/parallel concurrency support}

  s.rubyforge_project = 'salesforce_bulk_api_serial_or_paraller'

  s.add_dependency('json', ['>= 0'])
  s.add_dependency('xml-simple', ['>= 0'])

  s.add_development_dependency 'rspec'
  s.add_development_dependency 'restforce', '~> 1.5.1'
  s.add_development_dependency 'rake', '~> 10.4.2'
  s.add_development_dependency 'pry'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']

end

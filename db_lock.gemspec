$LOAD_PATH.push File.expand_path('lib', __dir__)

# Maintain your gem's version:
require 'db_lock/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'db_lock'
  s.version     = DBLock::VERSION
  s.licenses    = ['MIT']
  s.authors     = ['mkon']
  s.email       = ['konstantin@munteanu.de']
  s.homepage    = 'https://github.com/mkon/db_lock'
  s.summary     = 'Obtain manual db/mysql locks'
  s.description = 'Obtain manual db locks to guard blocks of code from parallel execution.' \
                  'Currently only supports mysql and ms-sql-server.'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'README.md']

  s.add_dependency 'activerecord', '>= 3.0', '< 6'
  s.add_development_dependency 'rspec', '~> 3.7'
  s.add_development_dependency 'rubocop', '= 0.59.2'
  s.add_development_dependency 'rubocop-rspec', '1.30.0'
end

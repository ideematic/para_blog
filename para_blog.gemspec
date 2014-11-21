$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "para_blog/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "para_blog"
  s.version     = ParaBlog::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of ParaBlog."
  s.description = "TODO: Description of ParaBlog."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency 'rails', '>= 4.0'
  s.add_dependency 'para'
  s.add_dependency 'friendly_id', '~> 5.0.0'

  s.add_development_dependency "sqlite3"
end
